function varargout = practica_10_b(varargin)
% PRACTICA_10_B MATLAB code for practica_10_b.fig
%      PRACTICA_10_B, by itself, creates a new PRACTICA_10_B or raises the existing
%      singleton*.
%
%      H = PRACTICA_10_B returns the handle to a new PRACTICA_10_B or the handle to
%      the existing singleton*.
%
%      PRACTICA_10_B('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRACTICA_10_B.M with the given input arguments.
%
%      PRACTICA_10_B('Property','Value',...) creates a new PRACTICA_10_B or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before practica_10_b_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to practica_10_b_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help practica_10_b

% Last Modified by GUIDE v2.5 20-Mar-2022 19:15:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @practica_10_b_OpeningFcn, ...
                   'gui_OutputFcn',  @practica_10_b_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before practica_10_b is made visible.
function practica_10_b_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to practica_10_b (see VARARGIN)

% Choose default command line output for practica_10_b
handles.output = hObject;
Datos={100;-2*pi;2*pi;2;1}; %envia los datos a la tabla de valores
set(handles.uitable1,'data',Datos,'FontSize',12,... %asigna nombre a las filas
'ColumnEditable',true,'ForegroundColor',[1 0 0],...% y les da color
'RowName',{'NumPuntos' 'xInicial' 'xFinal' 'a' 'w'},...%
'ColumnName',{'Valores'},'ColumnWidth',{120});
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes practica_10_b wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = practica_10_b_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MD=get(handles.uitable1,'data')  %Se lee los datos de la tabla 1 y se gurdan en la variable MD
LC=get(handles.uitable1,'ColumnName');% lee los datos de las columnas y las guarda en LC
LF=get(handles.uitable1,'RowName');% lee los nombres de las filas y las guarda en LF
AC=get(handles.uitable1,'ColumnWidth');% lee los valores de las columnas y lass guarda en AC
if get(handles.radiobutton1,'value')==1 %inicia una serie de sentencias
n=MD{1,1};% n es el numero de puntos a graficar
x=linspace(MD{2,1},MD{3,1},n); %crea un vector de datos a partir de los valores en la tabla
Valor=get(handles.popupmenu1,'Value');%asigna los datos del pop menu en la variable valor
syms x; %definimos una variable simbolica x
switch Valor % nos muestra las posibles opciones que puede evaluar
case 1
y=MD{4,1}*sin(MD{5,1}*x);%y=a*sin(wt)
case 2
y=MD{4,1}*cos(MD{5,1}*x);%y=a*sin(wt)
case 3
y=MD{4,1}*tan(MD{5,1}*x);%y=a*cos(wt)
case 4
y=MD{4,1}*1/tan(MD{5,1}*x);%y=a*tan(wt)
case 5
y=MD{4,1}*1/cos(MD{5,1}*x);%y=a*sec(wt)
otherwise
y=MD{4,1}*1/sin(MD{5,1}*x);%y=a*csc(wt)
end
set(handles.edit1,'string',['y=',char(y)], ...
    'fontsize',14) %envia los datos que evalua al editor
u=linspace(MD{2,1},MD{3,1},n); % crea un vector de valores a partir de la tabla
if (Valor==4) %si la opcion esta activa 
    for k=1:length(u)% inicia el ciclo for para calcular los datos 
    if double(subs(tan(MD{5,1}*x),u(k)))==0 % si el valor es igual a cero
        y1(k)=0;
    else
        y1(k)=double(subs(y,u(k)));% grafica lo siguiente
    end % fin de la interaccion if/else
    end
elseif (Valor==5) % si la funcion 5 esta activa realiza lo siguiente
    for k=1:length(u) % inicio de un ciclo for para calcular los valores
    if double(subs(cos(MD{5,1}*x),u(k)))==0 % si el valor de las funcon es igual a cero
        y1(k)=0
    else
        y1(k)=double(subs(y,u(k))); % realiza la siguiente operacion
        
    end
    end
elseif (Valor==6)% si la funcion numero 6 esta activa rrealiza lo siguiente
 for k=1:length(u) %inicia el ciclo for con el valor igual a 1
    if double(subs(sin(MD{5,1}*x),u(k)))==0 %si el valor es cero se obtiene lo siguiente
        y1(k)=0
    else
        y1(k)=double(subs(y,u(k)));% evaluarla en esta operacion
        
    end
 end


else 
y1=double(subs(y,u));
end 
for k=1:n
plot(u(1:k),y1(1:k),'-r');grid on; % grafica la funcion en la que  nos encontremos
text(-pi/2,5,'Jose Alberto Barrios Mendez','FontSize',16,'color', ...%le asigna propiedades
    [.21 .12 .12],'HorizontalAlignment','center')

end
axis([MD{2,1} MD{3,1} -5*MD{4,1} 5*MD{4,1}]); % nos muestra la grafica en los intervalos de la tabla

elseif get(handles.radiobutton2,'Value')==1 % elvalua el boton 2

cla;
syms t;
%se debe usar un ciclo para incluir todos los datos
n=MD{4,1};y=0;
while n > -1
    y=y+MD{MD{4,1}+5-n,1}*t^(n)
    n=n-1;
    set(handles.edit1,'string',['y = ',char(y)],'FontSize',14);
end
y             %=MD{5,1}*t^2+MD{6,1}*t+MD{7,1};
x=linspace(MD{2,1},MD{3,1},MD{1,1}); % crea un vector de datos con los valores de latabla
y1=double(subs(y,x)); %crea una variable paralos valores de y/x
plot(x,y1);  % grafica la funcion 
text(n/2,10,'Jose Alberto Barrios Mendez','FontSize',16,'color', ...% le asigna propiedadees
    [.21 .12 .12],'HorizontalAlignment','center')
set(handles.edit1,'string',['y = ',char(y)],'FontSize',14);
grid on



%boton 3
elseif get(handles.radiobutton3,'Value')==1% evalua el boton 3
    cla;
 
syms t; %asigna la variable simbolica t

%se debe usar un ciclo para incluir todos los datos
n=MD{4,1};y=0;% lee los datos de la tabla en la fila 4 columna 1

y =exp(t*n); % evalua la funcion euler y gauarda los datos en la variable y
x=linspace(MD{2,1},MD{3,1},MD{1,1}); % crea un vector de datos de la
y1=double(subs(y,x));% guarda los puntos a graficar en la variable y1
plot(x,y1); %grafica los valores de x, y1
text(0,100,'Jose Alberto Barrios Mendez','FontSize',16,'color', ...% asigna propiedades y un texto 
    [.21 .12 .12],'HorizontalAlignment','center')
set(handles.edit1,'string',['y = ',char(y)],'FontSize',14);
grid on

%boton 4

elseif get(handles.radiobutton4,'Value')==1% evalua el boton numero 4
cla;% borra las graficas que pudieran existir antes de evaluar el boton
syms t; %usammosm la varible simbolica t

w=MD{4,1};y=0; %extraemos los datos de la tabla en la fila 4  columna 1

y =w*log(t); % creamos la funcion logaritmo y la guardamos en y
x=linspace(MD{2,1},MD{3,1},MD{1,1});% crea un vecotor con los valores en x
y1=double(subs(y,x)); %guarda los valores en y1
plot(x,y1);% grafica los valores de x, y1
text(2,3, 'Jose Alberto Barrios Mendez','FontSize',16,'color', ...% propiedades ala grafica
    [.21 .12 .12],'HorizontalAlignment','center')
set(handles.edit1,'string',['y = ',char(y)],'FontSize',14);
grid on

%boton5 
elseif get(handles.radiobutton5,'Value')==1% evañua el boton 5
    clc;
cla; % limpia la ventana de la grafica
syms t;
%se debe usar un ciclo para incluir todos los datos
n=MD{4,1};y=0;

while n > 1 % usamos un vlaor n mayor que 1
    y=y+MD{MD{4,1}+5-n,1}/t^(n) % evaluammos la funcion en la cual ira n
    n=n-1; % el vslor n va a ir disminuyendo en 1
    set(handles.edit1,'string',['y = ',char(y)],'FontSize',8);% enviamos la informacion
                                                             % al edit 1
end


%y             %=MD{5,1}*t^2+MD{6,1}*t+MD{7,1};
x=linspace(MD{2,1},MD{3,1},MD{1,1}); % creamos un vecor de datos
y1=double(subs(y,x)); % evaluamos los datos en y1


plot(x,y1); % graficamos los valores de x, y1
text(0,200,'Jose Alberto Barrios Mendez','FontSize',8,'color', ...% añadimos propiedades
    [.21 .12 .12],'HorizontalAlignment','center')
set(handles.edit1,'string',['y = ',char(y)],'FontSize',14);
grid on








% boton 6
elseif get(handles.radiobutton6,'Value')==1 % evalua el boton 6

n=MD{1,1};% n es el numero de puntos a graficar
%x=linspace(MD{2,1},MD{3,1},n);
Valor=get(handles.popupmenu1,'Value');% guarda los valores del menu pop up en valor
syms x; %usamos variablesimbolica x
switch Valor % sie etramos en el menu popup entonces
case 1
y=MD{4,1}*asin(MD{5,1}*x);%y=arcoseno x
case 2
y=MD{4,1}*acos(MD{5,1}*x);%y=arcocoseno
case 3
y=MD{4,1}*atan(MD{5,1}*x);%y=arcotangente
case 4
y=MD{4,1}*1/atan(MD{5,1}*x);%yarcocotangente
case 5
y=MD{4,1}*asec(MD{5,1}*acos(1/x));%y=arcosecante
otherwise
y=MD{4,1}*1/asin(MD{5,1}*x);%y=acsc(wt)
end
set(handles.edit1,'string',['y=',char(y)], ... % enviamos los valores al edit 1
    'fontsize',14)
u=linspace(MD{2,1},MD{3,1},n); % cremos un vector de datos
if (Valor==4)
    for k=1:length(u)
    if double(subs(atan(MD{5,1}*x),u(k)))==0
        y1(k)=0;
    else
        y1(k)=double(subs(y,u(k)));
    end
    end
elseif (Valor==5)
    for k=1:length(u)
    if double(subs(acos(MD{5,1}*x),u(k)))==0
        y1(k)=0
    else
        y1(k)=double(subs(y,u(k)));
        
    end
    end
elseif (Valor==6)
 for k=1:length(u)
    if double(subs(asin(MD{5,1}*x),u(k)))==0
        y1(k)=0
    else
        y1(k)=double(subs(y,u(k)));
        
    end
 end

else 
y1=double(subs(y,u));
end 
for k=1:n
plot(u(1:k),y1(1:k),'--b');grid on;
text(0,1,'Jose Alberto Barrios Mendez','FontSize',16,'color', ...
    [.21 .12 .12],'HorizontalAlignment','center')

end
axis([MD{2,1} MD{3,1} -5*MD{4,1} 5*MD{4,1}]);









    
else
    syms t;
    y=str2sym(get(handles.edit1,'string'));

     x=linspace(MD{2,1},MD{3,1},MD{1,1});
     y1=double(subs(y,x));
     plot(x,y1); grid on
text(0,0,'Jose Alberto B.M.','FontSize',15,'FontWeight','bold' ...
    ,'Color',[.12 .12 .12],'HorizontalAlignment','center')
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

MDatos=get(handles.uitable1,'data'); % envia los datos de la tabla en la variable MD
LFilas=get(handles.uitable1,'RowName');%sirve para leer las filas de la tabla
funcion=get(handles.popupmenu1,'Value')% guarda la funcion del pop up menu en funcion
Cadena=get(handles.popupmenu1,'string')%lfuncion enviar informacion al edit

if (get(handles.radiobutton1,'value')==1) %si el boton 1 esta activo
MDatos{2,1}=-2*pi; %valor inical de x
MDatos{3,1}= 2*pi; % valor final de x
MDatos{4,1}= 2; % valor de la fila 4, columna 1
MDatos{5,1}= 1;
LFilas{4,1}='a';
LFilas{5,1}='w';
for k=size(MDatos,1):-1:6
MDatos(k,:)=[];
LFilas(k,:)=[];
end
set(handles.uitable1,'data',MDatos,'RowName',LFilas);
Cadena={'y=a*sin(w*x)'  'y=a*cos(w*x)'  'y=a*tan(w*x)'...
    'y=a*cot(w*x)'  'y=a*sec(w*x)' 'y=a*csec(w*x)'}; 
set(handles.popupmenu1,'string',Cadena);

elseif (get(handles.radiobutton2,'value')==1)
   MDatos{2,1}=-5;
MDatos{3,1}= 5;
MDatos{4,1}= 2; 
LFilas{4,1}='grado';
LFilas{5,1}='a'; MDatos{5,1}=1;
LFilas{6,1}='b'; MDatos{6,1}=-2;
LFilas{7,1}='c'; MDatos{7,1}=3;
set(handles.uitable1,'data',MDatos,'Rowname',LFilas);
elseif (get(handles.radiobutton3,'value')==1)
   MDatos{2,1}=-5;
MDatos{3,1}= 5;
MDatos{4,1}= 2; 
LFilas{4,1}='grado';
LFilas{5,1}='a'; MDatos{5,1}=1;
LFilas{6,1}='b'; MDatos{6,1}=-2;
LFilas{7,1}='c'; MDatos{7,1}=3;
set(handles.uitable1,'data',MDatos,'Rowname',LFilas);

elseif (get(handles.radiobutton4,'value')==1)
   MDatos{2,1}=0;
MDatos{3,1}= 5;
MDatos{4,1}= 2; 
LFilas{4,1}='Base';
LFilas{5,1}='a'; MDatos{5,1}=1;
LFilas{6,1}='b'; MDatos{6,1}=-2;
LFilas{7,1}='c'; MDatos{7,1}=3;
set(handles.uitable1,'data',MDatos,'Rowname',LFilas);

elseif (get(handles.radiobutton5,'value')==1)
  MDatos{2,1}=-5;
MDatos{3,1}= 5;
MDatos{4,1}= 2; 
LFilas{4,1}='grado';
LFilas{5,1}='a'; MDatos{5,1}=1;
LFilas{6,1}='b'; MDatos{6,1}=-2;
LFilas{7,1}='c'; MDatos{7,1}=3;
set(handles.uitable1,'data',MDatos,'Rowname',LFilas);



elseif (get(handles.radiobutton6,'value')==1)
MDatos{2,1}=-1;
MDatos{3,1}= 1;
MDatos{4,1}= 1;
MDatos{5,1}= 1;
LFilas{4,1}='a';
LFilas{5,1}='w';
for k=size(MDatos,1):-1:6
MDatos(k,:)=[];
LFilas(k,:)=[];
end
set(handles.uitable1,'data',MDatos,'RowName',LFilas);
Cadena={'y=asin(w*x)'  'y=acos(w*x)'  'y=atan(w*x)'...
    'y=acot(w*x)'  'y=asec(w*x)' 'y=arccsc(w*x)'}; 
set(handles.popupmenu1,'string',Cadena);



end


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
clc;
M=get(handles.uitable1,'data');
L=get(handles.uitable1,'RowName');
if get(handles.radiobutton2,'value')==1
    if((M{4,1}+4)<size(M,1))
        for k=1:4+M{4,1}+1
            MN{k,1}=M{k,1};
            LN{k,1}=L{k,1};
        end
        M=MN;
        L=LN;
    else
        for k=size(M,1):M{4,1}+5
            M{k}=k-4;
            L{k}=char(96+k-4);
        end
    end
end
set(handles.uitable1,'data',M,'RowName',L)


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
