document.addEventListener('DOMContentLoaded', function () {
    const modal = document.getElementById('dynamicModal');
    const modalContent = document.getElementById('modalContent');

    document.querySelectorAll('.categories__shop--card__link').forEach(link => {
        link.addEventListener('click', function () {
            const productId = this.getAttribute('data-id');

            // AJAX მოთხოვნა პროდუქტის მონაცემების მისაღებად
            fetch(`/product/${productId}`)
                .then(response => response.json())
                .then(data => {
                    // მოდალის შიგთავსის განახლება
                    modalContent.innerHTML = `
                        <h2>${data.name}</h2>
                        <img src="${data.image_link}" alt="${data.name}" />
                        <p>${data.description}</p>
                        <span>Price: ${data.price} GEL</span>
                    `;
                })
                .catch(error => console.error('Error fetching product data:', error));
        });
    });
});