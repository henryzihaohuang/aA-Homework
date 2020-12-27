document.addEventListener("DOMContentLoaded", function(){
    
    const canvas = document.getElementById('mycanvas');
    const ctx = canvas.getContext('2d');

    ctx.fillStyle = "pink";
    ctx.fillRect (200, 200, 100, 100);


    ctx.beginPath();
    
    ctx.arc(100,75,50,0,2*Math.PI);
    ctx.strokeStyle = "lavender";
    
    ctx.lineWidth = 7;
    ctx.stroke();
    ctx.fillStyle = "lavender";
    ctx.fill();
    
});
