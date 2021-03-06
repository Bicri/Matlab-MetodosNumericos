function varargout = Trapecio(varargin)
% TRAPECIO MATLAB code for Trapecio.fig
%      TRAPECIO, by itself, creates a new TRAPECIO or raises the existing
%      singleton*.
%
%      H = TRAPECIO returns the handle to a new TRAPECIO or the handle to
%      the existing singleton*.
%
%      TRAPECIO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRAPECIO.M with the given input arguments.
%
%      TRAPECIO('Property','Value',...) creates a new TRAPECIO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Trapecio_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Trapecio_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Trapecio

% Last Modified by GUIDE v2.5 14-Jan-2021 18:43:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Trapecio_OpeningFcn, ...
                   'gui_OutputFcn',  @Trapecio_OutputFcn, ...
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


% --- Executes just before Trapecio is made visible.
function Trapecio_OpeningFcn(hObject, eventdata, handles, varargin)
screenSize = get(0,'ScreenSize');
posActual = get(gcf,'Position');
xr = screenSize(3)-posActual(3);
xp = round(xr/2);
yr = screenSize(4)-posActual(4);
yp = round(yr/2);
set(gcf,'Position',[xp yp posActual(3) posActual(4)]);

set(handles.tblDatos,'Visible','off');
set(handles.txtArea,'Visible','off');
set(handles.lblArea,'Visible','off');
set(handles.axes1,'Visible','off');
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Trapecio (see VARARGIN)

% Choose default command line output for Trapecio
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Trapecio wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Trapecio_OutputFcn(hObject, eventdata, handles) 
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
Tercer_Parcial;


function txtPol_Callback(hObject, eventdata, handles)
% hObject    handle to txtPol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtPol as text
%        str2double(get(hObject,'String')) returns contents of txtPol as a double


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



function txtSup_Callback(hObject, eventdata, handles)
% hObject    handle to txtSup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtSup as text
%        str2double(get(hObject,'String')) returns contents of txtSup as a double


% --- Executes during object creation, after setting all properties.
function txtSup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtSup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtInf_Callback(hObject, eventdata, handles)
% hObject    handle to txtInf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtInf as text
%        str2double(get(hObject,'String')) returns contents of txtInf as a double


% --- Executes during object creation, after setting all properties.
function txtInf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtInf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtInter_Callback(hObject, eventdata, handles)
% hObject    handle to txtInter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtInter as text
%        str2double(get(hObject,'String')) returns contents of txtInter as a double


% --- Executes during object creation, after setting all properties.
function txtInter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtInter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnLimpia.
function btnLimpia_Callback(hObject, eventdata, handles)
% hObject    handle to btnLimpia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

limpia='';

objetos = findobj(gcbf,'Tag','txtPol');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtSup');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtInf');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtInter');
set(objetos,'String',limpia);

cla reset;

set(handles.tblDatos,'Visible','off');
set(handles.txtArea,'Visible','off');
set(handles.lblArea,'Visible','off');
set(handles.axes1,'Visible','off');

clear;
clear global;

% --- Executes on button press in btnEjecuta.
function btnEjecuta_Callback(hObject, eventdata, handles)
% hObject    handle to btnEjecuta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.tblDatos,'Visible','on');
set(handles.txtArea,'Visible','on');
set(handles.lblArea,'Visible','on');
set(handles.axes1,'Visible','on');

num_elem(:,:)={''};
set(handles.tblDatos,'data',num_elem);
cla reset;

f=get(handles.txtPol,'String');
b = str2double(get(handles.txtSup,'String'));    %Limite superior
a = str2double(get(handles.txtInf,'String'));  %Limite inferior
n = str2double(get(handles.txtInter,'String'));  %Intervalos

h=(b-a)/n; 
g=inline(f);
s=0;
sum=0;
%hold on;
for i=1:n

    s=h/2*(g(a+(i-1)*h)+g(a+(i)*h));
    
    matriz(i,1) = i;
    matriz(i,2) = s;
    sum = sum + s;
end

set(handles.tblDatos,'data',matriz);
set(handles.txtArea,'String',sum);


hold on;
x1=linspace(a,b,n);  
y1=subs(str2sym(f),x1);
bar(x1,y1)
%xlabel('Eje X')
%ylabel('Eje y')
title(char(f))
plot(handles.axes1,x1,y1,'red','LineWidth',1)
grid on;



function txtArea_Callback(hObject, eventdata, handles)
% hObject    handle to txtArea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtArea as text
%        str2double(get(hObject,'String')) returns contents of txtArea as a double


% --- Executes during object creation, after setting all properties.
function txtArea_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtArea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
