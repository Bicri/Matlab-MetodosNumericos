function varargout = Gauss_Seidel(varargin)
% GAUSS_SEIDEL MATLAB code for Gauss_Seidel.fig
%      GAUSS_SEIDEL, by itself, creates a new GAUSS_SEIDEL or raises the existing
%      singleton*.
%
%      H = GAUSS_SEIDEL returns the handle to a new GAUSS_SEIDEL or the handle to
%      the existing singleton*.
%
%      GAUSS_SEIDEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GAUSS_SEIDEL.M with the given input arguments.
%
%      GAUSS_SEIDEL('Property','Value',...) creates a new GAUSS_SEIDEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Gauss_Seidel_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Gauss_Seidel_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Gauss_Seidel

% Last Modified by GUIDE v2.5 12-Jan-2021 23:28:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Gauss_Seidel_OpeningFcn, ...
                   'gui_OutputFcn',  @Gauss_Seidel_OutputFcn, ...
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


% --- Executes just before Gauss_Seidel is made visible.
function Gauss_Seidel_OpeningFcn(hObject, eventdata, handles, varargin)
screenSize = get(0,'ScreenSize');
posActual = get(gcf,'Position');
xr = screenSize(3)-posActual(3);
xp = round(xr/2);
yr = screenSize(4)-posActual(4);
yp = round(yr/2);
set(gcf,'Position',[xp yp posActual(3) posActual(4)]);
set(handles.lblError,'Visible','off');
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Gauss_Seidel (see VARARGIN)

% Choose default command line output for Gauss_Seidel
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Gauss_Seidel wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Gauss_Seidel_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtx1_Callback(hObject, eventdata, handles)
% hObject    handle to txtx1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtx1 as text
%        str2double(get(hObject,'String')) returns contents of txtx1 as a double


% --- Executes during object creation, after setting all properties.
function txtx1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtx1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtx2_Callback(hObject, eventdata, handles)
% hObject    handle to txtx2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtx2 as text
%        str2double(get(hObject,'String')) returns contents of txtx2 as a double


% --- Executes during object creation, after setting all properties.
function txtx2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtx2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtx3_Callback(hObject, eventdata, handles)
% hObject    handle to txtx3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtx3 as text
%        str2double(get(hObject,'String')) returns contents of txtx3 as a double


% --- Executes during object creation, after setting all properties.
function txtx3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtx3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txty1_Callback(hObject, eventdata, handles)
% hObject    handle to txty1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txty1 as text
%        str2double(get(hObject,'String')) returns contents of txty1 as a double


% --- Executes during object creation, after setting all properties.
function txty1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txty1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txty2_Callback(hObject, eventdata, handles)
% hObject    handle to txty2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txty2 as text
%        str2double(get(hObject,'String')) returns contents of txty2 as a double


% --- Executes during object creation, after setting all properties.
function txty2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txty2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txty3_Callback(hObject, eventdata, handles)
% hObject    handle to txty3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txty3 as text
%        str2double(get(hObject,'String')) returns contents of txty3 as a double


% --- Executes during object creation, after setting all properties.
function txty3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txty3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtz1_Callback(hObject, eventdata, handles)
% hObject    handle to txtz1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtz1 as text
%        str2double(get(hObject,'String')) returns contents of txtz1 as a double


% --- Executes during object creation, after setting all properties.
function txtz1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtz1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtz2_Callback(hObject, eventdata, handles)
% hObject    handle to txtz2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtz2 as text
%        str2double(get(hObject,'String')) returns contents of txtz2 as a double


% --- Executes during object creation, after setting all properties.
function txtz2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtz2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtz3_Callback(hObject, eventdata, handles)
% hObject    handle to txtz3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtz3 as text
%        str2double(get(hObject,'String')) returns contents of txtz3 as a double


% --- Executes during object creation, after setting all properties.
function txtz3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtz3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtI1_Callback(hObject, eventdata, handles)
% hObject    handle to txtI1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtI1 as text
%        str2double(get(hObject,'String')) returns contents of txtI1 as a double


% --- Executes during object creation, after setting all properties.
function txtI1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtI1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtI2_Callback(hObject, eventdata, handles)
% hObject    handle to txtI2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtI2 as text
%        str2double(get(hObject,'String')) returns contents of txtI2 as a double


% --- Executes during object creation, after setting all properties.
function txtI2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtI2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtI3_Callback(hObject, eventdata, handles)
% hObject    handle to txtI3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtI3 as text
%        str2double(get(hObject,'String')) returns contents of txtI3 as a double


% --- Executes during object creation, after setting all properties.
function txtI3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtI3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnAtras.
function btnAtras_Callback(hObject, eventdata, handles)
% hObject    handle to btnAtras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all;
clear global;
close;
Segundo_Parcial;

% --- Executes on button press in btnLimpiar.
function btnLimpiar_Callback(hObject, eventdata, handles)
% hObject    handle to btnLimpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num_elem(:,:)={''};
set(handles.tblDatos,'data',num_elem);

limpia='';

objetos = findobj(gcbf,'Tag','txtx1');
set(objetos,'String',limpia);
objetos = findobj(gcbf,'Tag','txty1');
set(objetos,'String',limpia);
objetos = findobj(gcbf,'Tag','txtz1');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtx2');
set(objetos,'String',limpia);
objetos = findobj(gcbf,'Tag','txty2');
set(objetos,'String',limpia);
objetos = findobj(gcbf,'Tag','txtz2');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtx3');
set(objetos,'String',limpia);
objetos = findobj(gcbf,'Tag','txty3');
set(objetos,'String',limpia);
objetos = findobj(gcbf,'Tag','txtz3');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtI1');
set(objetos,'String',limpia);
objetos = findobj(gcbf,'Tag','txtI2');
set(objetos,'String',limpia);
objetos = findobj(gcbf,'Tag','txtI3');
set(objetos,'String',limpia);

set(handles.lblError,'Visible','off');
clear all;
clear global;

% --- Executes on button press in btnEjecutar.
function btnEjecutar_Callback(hObject, eventdata, handles)
% hObject    handle to btnEjecutar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A(1,1) = AplicaCeros(str2double(get(handles.txtx1,'String')));
A(1,2) = AplicaCeros(str2double(get(handles.txty1,'String')));
A(1,3) = AplicaCeros(str2double(get(handles.txtz1,'String')));

A(2,1) = AplicaCeros(str2double(get(handles.txtx2,'String')));
A(2,2) = AplicaCeros(str2double(get(handles.txty2,'String')));
A(2,3) = AplicaCeros(str2double(get(handles.txtz2,'String')));

A(3,1) = AplicaCeros(str2double(get(handles.txtx3,'String')));
A(3,2) = AplicaCeros(str2double(get(handles.txty3,'String')));
A(3,3) = AplicaCeros(str2double(get(handles.txtz3,'String')));

b(1,1) =  AplicaCeros(str2double(get(handles.txtI1,'String')));
b(2,1) =  AplicaCeros(str2double(get(handles.txtI2,'String')));
b(3,1) =  AplicaCeros(str2double(get(handles.txtI3,'String')));

j=1;
i=1;
diagonal=0;
x(1,1)=0;
errorX(1,1)=1;
tamA = size(A);
tamb = size(b);
flag=0;

    for i=1:tamA(1)
        diagonal=0;
        
        for j=1:tamA(2)
            if j~=i
                diagonal = diagonal + abs(A(i,j));
            end
        end
        
        if(diagonal > abs(A(i,i))) %Si cumple, no dominante
            flag=1;
            break;
        end
    end

    if(flag==1) %La matriz no es dominante
        set(handles.lblError,'Visible','on');
    else
        %Empieza el Metodo
        
        %Inicializa Variables
        for i=1:tamA(2)
           x(i,1) = 0;
           errorX(i,1)=1;
        end
        tamAp = size(x);
        
        %Calculo de x(n+1)
        x(1,1) = (inicial(x,1,1,tamAp,A,1)+b(1,1))/divide(1,A,1);
       
        %Metodo Numero - Aproximaciones
        for i=1:9
            %Itera en las variables existentes
            for j=1:tamAp(1)
                if(j==1)
                    x(j,i+1) = 0; %x(n+1) se calcula al final

                elseif(j>1 && j<tamAp(1))
                    %calculo de variables intermedias
                        %obtiene las ecuaciones apoyandose en las
                        %funciones, pero añade el termino independiente y
                        %el divisor 
                    x(j,i+1) = (intermedio(x,j,i,tamAp,j,A) + inicial(x,j,i,tamAp,A,j)+b(j,1))/divide(j,A,j);

                elseif(j==tamAp(1))
                    %Calculo de variable final
                    x(j,i+1) = (intermedio(x,j,i,tamAp,j,A)+b(j,1))/divide(j,A,j);
                    j=1;
                    %Calculo de x(n+1)
                    x(j,i+1) = (inicial(x,j,i+1,tamAp,A,j)+b(1,1))/divide(1,A,1);
                end
            end
        end
    
        tamAp = size(x);
        
        %--- Error
        for i=2:tamAp(2)
            for j=1:tamAp(1)
                errorX(j,i) = abs( (x(j,i)-x(j,i-1))/x(j,i) );
            end
        end
        %Fin error------------------------------------------------------------
        
        transAprox = [x'];
        transError = [errorX'];
        totali = size(transAprox);
    
        %Generacion de matriz para contadores
        for i=1:totali(1)
            matrizI(i,1)=i;
        end
    
        matrizGneral = [matrizI transAprox transError];
    
        set(handles.tblDatos,'data',matrizGneral);
    end    
    
