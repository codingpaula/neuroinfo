function [] = plot_classline(h, w, theta)
% Uebung 2 Aufgabe 2.2
% Skript zum plotten der Trennlinie

%bei senkrechter Klassifikationsgeraden
if w(2) == 0
    % X-Startpunkt der Senkrechten
    start = theta/w(1);
    X = [start, start];
    % Y-Start- und Endpunkt der Senkrechten
    Y = [-12, 12];
   
else
    % Y-offset der Geraden
    y = theta/w(2);
    % Steigung der Gerade orthogonal zu w
    m = -w(1)/w(2);

X = [-12, 12];
Y = [(y +(m*(-12))), (y + (m*(12)))];

end

plot (X(:), Y(:), 'green') ;





