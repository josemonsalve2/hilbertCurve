function [path,counter]=hilbertCurve(x0, y0, xi, xj, yi, yj, n,path,counter)
        pause(0.25)
        aux=path(find(path(:,1)~=0),:);
        plot (aux(:,1),aux(:,2),'-x');
        hold on;
        quiver(x0,y0,xi,yi,0);
        quiver(x0,y0,xj,yj,0);
        axis([-0.2 1.1 -.2 1.1])
    if n <= 0 
        X = x0 + (xi + yi)/2;
        Y = y0 + (xj + yj)/2;
        path(counter,1)=X;
        path(counter,2)=Y;
        plot (X,Y,'x');
        axis([-0.2 1.1 -.2 1.1])
        counter=counter+1;
    else
        hold off;
        [path,counter]=hilbertCurve(x0,               y0,               yi/2, yj/2, xi/2, xj/2, n - 1,path,counter);
        hold off;
        [path,counter]=hilbertCurve(x0 + xi/2,        y0 + xj/2,        xi/2, xj/2, yi/2, yj/2, n - 1,path,counter);
        hold off;
        [path,counter]=hilbertCurve(x0 + xi/2 + yi/2, y0 + xj/2 + yj/2, xi/2, xj/2, yi/2, yj/2, n - 1,path,counter);
        hold off;
        [path,counter]=hilbertCurve(x0 + xi/2 + yi,   y0 + xj/2 + yj,  -yi/2,-yj/2,-xi/2,-xj/2, n - 1,path,counter);
        hold off;
    end 
        pause(0.25)
        aux=path(find(path(:,1)~=0),:);
        plot (aux(:,1),aux(:,2),'-x');
        hold on;
        quiver(x0,y0,xi,yi,0);
        quiver(x0,y0,xj,yj,0);
        axis([-0.2 1.1 -.2 1.1])
end
