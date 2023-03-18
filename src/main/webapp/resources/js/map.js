ymaps3.ready().then(init);
function init(){
    const map = new ymaps3.YMap(document.getElementById('map'), {
        location: {
            center: [53.91794680418061,27.59491213198798],
            zoom: 16
        }
    });
}