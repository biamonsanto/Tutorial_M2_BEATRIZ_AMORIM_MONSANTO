	// navebar
    let header = document.querySelector('header');
    let menu = document.querySelector('#menu-icon');
    let navbar = document.querySelector('.navbar');
     
     
    window.addEventListener('scroll', () => {
        header.classList.toggle('shadow', window.scrollY > 0);
    });
     
    menu.onclick = () => {
        navbar.classList.toggle('active');
    }
    window.onscroll = () => {
        navbar.classList.remove('active');
    }
    //primeira jquery
    $(document).ready(function() {
        $('.home-text').css('color', 'purple');
      });    
 
    //segunda jquery
    $('#downloadPDF').click(function() {
        window.location.href = "beatrizcurriculo.pdf";
    });
    

    //requisição ajax
    $('#botaoCurso').click(() => {
        $.ajax({
            url: './js/meuCurso.txt',
            type: 'GET',
            dataType: 'text',
            async: true,
            success: (data) => {
    
                $('#textoCurso').html(' | ' + data);
            }
        })
    })