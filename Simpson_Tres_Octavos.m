function varargout = Simpson_Tres_Octavos(varargin)
% SIMPSON_TRES_OCTAVOS MATLAB code for Simpson_Tres_Octavos.fig
%      SIMPSON_TRES_OCTAVOS, by itself, creates a new SIMPSON_TRES_OCTAVOS or raises the existing
%      singleton*.
%
%      H = SIMPSON_TRES_OCTAVOS returns the handle to a new SIMPSON_TRES_OCTAVOS or the handle to
%      the existing singleton*.
%
%      SIMPSON_TRES_OCTAVOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPSON_TRES_OCTAVOS.M with the given input arguments.
%
%      SIMPSON_TRES_OCTAVOS('Property','Value',...) creates a new SIMPSON_TRES_OCTAVOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Simpson_Tres_Octavos_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Simpson_Tres_Octavos_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Simpson_Tres_Octavos

% Last Modified by GUIDE v2.5 14-Jan-2021 20:45:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Simpson_Tres_Octavos_OpeningFcn, ...
                   'gui_OutputFcn',  @Simpson_Tres_Octavos_OutputFcn, ...
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


% --- Executes just before Simpson_Tres_Octavos is made visible.
function Simpson_Tres_Octavos_OpeningFcn(hObject, eventdata, handles, varargin)
screenSize = get(0,'ScreenSize');
posActual = get(gcf,'Position');
xr = screenSize(3)-posActual(3);
xp = round(xr/2);
yr = screenSize(4)-posActual(4);
yp = round(yr/2);
set(gcf,'Position',[xp yp posActual(3) posActual(4)]);


set(handles.txtArea,'Visible','off');
set(handles.lblArea,'Visible','off');
set(handles.axes1,'Visible','off');
set(handles.lblError,'Visible','off');
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Simpson_Tres_Octavos (see VARARGIN)

% Choose default command line output for Simpson_Tres_Octavos
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Simpson_Tres_Octavos wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Simpson_Tres_Octavos_OutputFcn(hObject, eventdata, handles) 
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

set(handles.txtArea,'Visible','off');
set(handles.lblArea,'Visible','off');
set(handles.axes1,'Visible','off');
set(handles.lblError,'Visible','off');

clear;
clear global;

% --- Executes on button press in btnEjecuta.
function btnEjecuta_Callback(hObject, eventdata, handles)
% hObject    handle to btnEjecuta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


f=get(handles.txtPol,'String');
b = str2double(get(handles.txtSup,'String'));    %Limite superior
a = str2double(get(handles.txtInf,'String'));  %Limite inferior
n = str2double(get(handles.txtInter,'String'));  %Intervalos

inf = a; sup=b;

if rem(n,3)~=0
    set(handles.lblError,'Visible','on');
else
    set(handles.lblError,'Visible','off');
    
    
    
    syms x;
    h=(b-a)/n;

    for k=1:1:n
        m(k)=a+k*h;
        x=m(k);
        y(k) = eval(f);
        %y(k)=f(x(k));
    end
  
    so=0;   sm3=0;
    
    for k=2:1:n-1
        if rem(k,3)==0
            sm3=sm3+y(k);
        else
            so=so+y(k);
        end
    end
    x=a;
    evaluaA = eval(f);
    x=b;
    evaluaB = eval(f);
    %format long
    resultado=(3*h/8)*(evaluaA+evaluaB+3*so+2*sm3);
    
    set(handles.txtArea,'Visible','on');
    set(handles.lblArea,'Visible','on');
    set(handles.axes1,'Visible','on');

    cla reset;
    
    set(handles.txtArea,'String',resultado);
    
    
    t=[inf:((inf+sup)/2):round(sup)];
    ezplot(handles.axes1,f,t);
end






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
