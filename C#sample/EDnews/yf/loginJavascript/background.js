var canvas = document.getElementById("myCanvas");
var context = canvas.getContext("2d");
var particles = [];
for (var i = 0; i < 500; i++) {
            particles.push({
            x: Math.random() * window.innerWidth,
            y: Math.random() * window.innerHeight,
            vx: (Math.random() * 1 - .5),
            vy: (Math.random() * 1 - .5),
            size: 1 + Math.random() * 2,
            color: "#fff"
        });
    }
function timeUpdate() {
        context.clearRect(0, 0, window.innerWidth, window.innerHeight);
        var len = particles.length;
        var particle;
        for (var i = 0; i < len; i++) {
            particle = particles[i];
            particle.x += particle.vx;
            particle.y += particle.vy;
            if (particle.x <= 0 || particle.x >= window.innerWidth) {
                particle.vx *= -1;
            }
            if (particle.y <= 0 || particle.y >= window.innerHeight) {
                particle.vy *= -1;
            }
            context.fillStyle = particle.color;
            context.beginPath();
            context.arc(particle.x, particle.y, particle.size, 0, Math.PI * 2, true);
            context.closePath();
            context.fill();
        }
    }
    setInterval(timeUpdate, 40);