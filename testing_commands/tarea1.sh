read -p "Hola, ¿Que palabra deseas buscar? " palabra

if [ -f divina_comedia.txt ]; 
	then 
		var=`grep -io "\s$palabra\s" divina_comedia.txt | wc -w`  
		echo "La palabra $palabra se encuentra $var veces dentro de la divina_comedia.txt"
else
	echo "El texto de la divina comedia no existe .. procediendo a descargarse..."
	wget https://www.samaelgnosis.net/libro/txt/divina_comedia.txt
	var=`grep -io "\s$palabra\s" divina_comedia.txt | wc -w`  
	echo "La palabra $palabra se encuentra $var veces dentro de la divina_comedia.txt"
fi