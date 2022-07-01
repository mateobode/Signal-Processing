N=200000; %N reprezinta numarul de elemente al vectorului

x = randn(1,N); %generez vectorul cu N elemente

%trebuie sa facem relatia (1.19) ca sa vedem daca coincid histograma cu
%graficul densitatii de probabilitate

v = var(x); %functia var ne returneaza varianta de x
sigma = sqrt(v); %deviatia care este de fapt radicalul variantiei(se poate si cu functia std(x))
m = mean(x); %am calculat media  

%avem toate ce ne trebuie ca sa scriem relatia de la (1.19)
f=@(x)(1/(sigma * sqrt(2 * pi)) * exp(-((x - m).^2)/(2 * v)));

t=-10:0.01:10; %aleg timpul t ca 
figure('Name', 'Histograma x Graficul de densitate de probabilitate');
hist(x); %histograma
hold on;
plot(t, f(t) * N); %graficul de densitatii de probabilitate
hold off;

%vrem sa vedem imbunatatirea in aproprierea dintre cele doua grafice asa ca
%am luat o data N = 200, N = 2000 si N = 20000 si am luat grafice asa cum
%se vede si prin pozele luate screenshot din rularea programului in mod
%manual cand modific N-ul cu 200/2000/20000
%am observat ca cand vectorul are un numar mai mare de elemente histograma
%lui aproprie mai mult cu graficul de densitate de probabilitate



