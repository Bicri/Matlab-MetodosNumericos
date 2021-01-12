function varargout = Bisecciones(varargin)
% BISECCIONES MATLAB code for Bisecciones.fig
%      BISECCIONES, by itself, creates a new BISECCIONES or raises the existing
%      singleton*.
%
%      H = BISECCIONES returns the handle to a new BISECCIONES or the handle to
%      the existing singleton*.
%
%      BISECCIONES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BISECCIONES.M with the given input arguments.
%
%      BISECCIONES('Property','Value',...) creates a new BISECCIONES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Bisecciones_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Bisecciones_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Bisecciones

% Last Modified by GUIDE v2.5 11-Jan-2021 17:29:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Bisecciones_OpeningFcn, ...
                   'gui_OutputFcn',  @Bisecciones_OutputFcn, ...
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


% --- Executes just before Bisecciones is made visible.
function Bisecciones_OpeningFcn(hObject, eventdata, handles, varargin)
screenSize = get(0,'ScreenSize');
posActual = get(gcf,'Position');
xr = screenSize(3)-posActual(3);
xp = round(xr/2);
yr = screenSize(4)-posActual(4);
yp = round(yr/2);
set(gcf,'Position',[xp yp posActual(3) posActual(4)]);
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Bisecciones (see VARARGIN)

% Choose default command line output for Bisecciones
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Bisecciones wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Bisecciones_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnAtras.
function btnAtras_Callback(hObject, eventdata, handles)
% hObject    handle to btnAtras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;close;
Primer_Parcial;


function txtPol_Callback(hObject, eventdata, handles)
% hObject    handle to txtPol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtPol as text
%        str2double(get(hObject,'String')) returns contents of txtPol as a double
%obtener = get(hObject, 'String');
%convertir = str2double(obtener);
%handles.txtPol=obtener;
%guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function txtPol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtPol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtA_Callback(hObject, eventdata, handles)
% hObject    handle to txtA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtA as text
%        str2double(get(hObject,'String')) returns contents of txtA as a double


% --- Executes during object creation, after setting all properties.
function txtA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtB_Callback(hObject, eventdata, handles)
% hObject    handle to txtB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtB as text
%        str2double(get(hObject,'String')) returns contents of txtB as a double


% --- Executes during object creation, after setting all properties.
function txtB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtTol_Callback(hObject, eventdata, handles)
% hObject    handle to txtTol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtTol as text
%        str2double(get(hObject,'String')) returns contents of txtTol as a double


% --- Executes during object creation, after setting all properties.
function txtTol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtTol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnBiseccion.
function btnBiseccion_Callback(hObject, eventdata, handles)
% hObject    handle to btnBiseccion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms x;
tolerancia = str2double(get(handles.txtTol,'String'));
f2=get(handles.txtPol,'String');
i=1;
matriz(i,1)=i;
matriz(i,2) = str2double(get(handles.txtA,'String'));
matriz(i,4) = str2double(get(handles.txtB,'String'));
error=2;

while(error>tolerancia)
    matriz(i,1)=i;
    
    matriz(i,3) = (matriz(i,2)+matriz(i,4))/2;
    
    x=matriz(i,2);              %A
    matriz(i,5) = eval(f2);     %PA
    
    x=matriz(i,4);              %B
    matriz(i,6)=eval(f2);       %PB
    
    x=matriz(i,3);              %MEDIA
    matriz(i,7) = eval(f2);     %PX
    
    matriz(i,8) = abs(matriz(i,7)); %Error
    
    i=i+1;
    
    
    if((matriz(i-1,5)>0 && matriz(i-1,6)>0)||(matriz(i-1,5)<0 && matriz(i-1,6)<0)||(matriz(i-1,5)==matriz(i-1,6)))
        break;
    elseif(i>10)
            break;
    else
        if((matriz(i-1,7)>0 && matriz(i-1,5)>0)||(matriz(i-1,7)<0 && matriz(i-1,5)<0))
            matriz(i,2) = matriz(i-1,3);
            matriz(i,4) = matriz(i-1,4);
        elseif((matriz(i-1,7)>0 && matriz(i-1,6)>0)||(matriz(i-1,7)<0 && matriz(i-1,6)<0))
            matriz(i,4) = matriz(i-1,3);
            matriz(i,2) = matriz(i-1,2);
        end
    end
    error = matriz(i-1,8);
end
set(handles.tblDatos,'data',matriz);


% --- Executes on button press in btnGrafica.
function btnGrafica_Callback(hObject, eventdata, handles)
% hObject    handle to btnGrafica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in btnLimpia.
axes(handles.ghaxes);
x=[-100:10:100];
f=get(handles.txtPol,'String');
ezplot(handles.ghaxes,f,x);

function btnLimpia_Callback(hObject, eventdata, handles)
% hObject    handle to btnLimpia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num_elem(:,:)={''};
set(handles.tblDatos,'data',num_elem);

limpia='';

objetos = findobj(gcbf,'Tag','txtTol');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtPol');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtA');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtB');
set(objetos,'String',limpia);

cla;
cla reset;
clear;
clear global;
