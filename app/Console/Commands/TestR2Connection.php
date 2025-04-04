<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;

class TestR2Connection extends Command
{
    protected $signature = 'test:r2';
    protected $description = 'Test Cloudflare R2 connection';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle()
    {
        $testFileName = 'test-file.txt';
        $testContent = 'This is a test file for Cloudflare R2 connection.';

        try {
            $s3 = Storage::disk('r2')->getDriver()->getAdapter()->getClient();
            $s3->putObject([
                'Bucket' => env('R2_BUCKET'),
                'Key' => $testFileName,
                'Body' => $testContent,
                'ACL' => 'public-read',
                'ContentType' => 'text/plain',
                // Remove ChecksumAlgorithm to avoid the error
            ]);
            $url = Storage::disk('r2')->url($testFileName);
            $this->info('File uploaded successfully: ' . $url);
            Log::info('Test file uploaded successfully: ' . $url);
        } catch (\Exception $e) {
            $this->error('File upload error: ' . $e->getMessage());
            Log::error('Test file upload error: ' . $e->getMessage());
            Log::error('Exception trace: ' . $e->getTraceAsString());
        }
    }
}
