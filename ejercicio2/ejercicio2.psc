Proceso ejercicio2
	Definir cantRet, bilCien, bilCinc, bilDiez Como Entero;
	Escribir 'Ingrese la cantidad de dinero a retirar (La cifra debe terminar en 0';
	Leer cantRet;
	Si cantRet MOD 10=0 Entonces
		Si cantRet>=100 Entonces
			Si cantRet MOD 100=0 Entonces
				bilCien <- trunc(cantRet/100);
				Escribir 'Se deben retirar: ', bilCien, ' billetes de 100$';
			SiNo
				bilCien <- trunc(cantRet/100);
				bilCinc <- trunc(cantRet MOD 100/50);
				bilDiez <- trunc((cantRet MOD 100%50)/10);
				Escribir 'Se deben retirar: ', bilCien, ' billetes de 100$ , ', bilCinc, ' billetes de 50$ y ', bilDiez, ' billtes de 10$';
			FinSi
		SiNo
			bilCinc <- trunc(cantRet MOD 100/50);
			bilDiez <- trunc((cantRet MOD 100%50)/10);
			Escribir 'Se deben retirar: ', bilCinc, ' billetes de 50$ y ', bilDiez, ' billtes de 10$';
		FinSi
	SiNo
		Escribir 'El monto ingresado no esta disponible';
	FinSi
FinProceso
