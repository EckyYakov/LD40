y -= floatSpeed;

alpha -= fadeSpeed;

if(alpha <= 0){
	instance_destroy();
}