<li>
    {{ $category->name }} - {{ $category->rank }} -
    <a href="{{ route('categories.edit', $category->id) }}">
        <i class="far fa-edit favourite-note font-17"></i>
    </a>
    <form action="{{ route('categories.destroy', $category->id) }}" method="POST" style="display:inline;">
        @csrf
        @method('DELETE')
        <button type="submit" class="btn btn-link p-0 m-0">
            <i class="far fa-trash-alt remove-note font-17"></i>
        </button>
    </form>
    {{--  აქ  გამოიყენება  თარგმანი --}}
    @if ($category->children->isNotEmpty())
        <ul>
            @each('backend.categories.category-item', $category->children, 'category')
        </ul>
    @endif
</li>
