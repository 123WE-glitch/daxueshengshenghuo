document.addEventListener('DOMContentLoaded', function() {
    window.addEventListener('scroll', function() {
        const header = document.querySelector('header');
        if (window.scrollY > 100) {
            header.style.boxShadow = '0 4px 20px rgba(0, 0, 0, 0.15)';
        } else {
            header.style.boxShadow = '0 2px 10px rgba(0, 0, 0, 0.1)';
        }
    });

    const serviceCards = document.querySelectorAll('.service-card');
    serviceCards.forEach(card => {
        card.addEventListener('mouseenter', function() {
            this.style.transform = 'translateY(-10px) scale(1.02)';
        });
        card.addEventListener('mouseleave', function() {
            this.style.transform = 'translateY(0) scale(1)';
        });
    });
});

function copyLink() {
    const shareUrlInput = document.getElementById('shareUrl');
    const copyMessage = document.getElementById('copyMessage');
    
    shareUrlInput.select();
    shareUrlInput.setSelectionRange(0, 99999);
    
    navigator.clipboard.writeText(shareUrlInput.value).then(function() {
        copyMessage.textContent = '链接已复制！现在可以通过微信发送给朋友了';
        copyMessage.classList.add('show');
        
        setTimeout(function() {
            copyMessage.classList.remove('show');
        }, 3000);
    }).catch(function(err) {
        copyMessage.textContent = '复制失败，请手动复制链接';
        copyMessage.classList.add('show');
        
        setTimeout(function() {
            copyMessage.classList.remove('show');
        }, 3000);
    });
}