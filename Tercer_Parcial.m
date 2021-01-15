function varargout = Tercer_Parcial(varargin)
% TERCER_PARCIAL MATLAB code for Tercer_Parcial.fig
%      TERCER_PARCIAL, by itself, creates a new TERCER_PARCIAL or raises the existing
%      singleton*.
%
%      H = TERCER_PARCIAL returns the handle to a new TERCER_PARCIAL or the handle to
%      the existing singleton*.
%
%      TERCER_PARCIAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TERCER_PARCIAL.M with the given input arguments.
%
%      TERCER_PARCIAL('Property','Value',...) creates a new TERCER_PARCIAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Tercer_Parcial_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Tercer_Parcial_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Tercer_Parcial

% Last Modified by GUIDE v2.5 15-Jan-2021 11:15:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Tercer_Parcial_OpeningFcn, ...
                   'gui_OutputFcn',  @Tercer_Parcial_OutputFcn, ...
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


% --- Executes just before Tercer_Parcial is made visible.
function Tercer_Parcial_OpeningFcn(hObject, eventdata, handles, varargin)
screenSize = get(0,'ScreenSize');
posActual = get(gcf,'Position');
xr = screenSize(3)-posActual(3);
xp = round(xr/2);
yr = screenSize(4)-posActual(4);
yp = round(yr/2);
set(gcf,'Position',[xp yp posActual(3) posActual(4)]);
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a e version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Tercer_Parcial (see VARARGIN)

% Choose default command line output for Tercer_Parcial
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Tercer_Parcial wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Tercer_Parcial_OutputFcn(hObject, eventdata, handles) 
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
close;
Inicio;


% --- Executes on button press in btnTrap.
function btnTrap_Callback(hObject, eventdata, handles)
% hObject    handle to btnTrap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;
clear global;
close;
Trapecio;
% --- Executes on button press in btnCuadro.
function btnCuadro_Callback(hObject, eventdata, handles)
% hObject    handle to btnCuadro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;
clear global;
close;
Cuadratura_Gaussiana;

% --- Executes on button press in BtnSimp13.
function BtnSimp13_Callback(hObject, eventdata, handles)
% hObject    handle to BtnSimp13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;
clear global;
close;
Simpson_Un_Tercio;

% --- Executes on button press in btnSimpson.
function btnSimpson_Callback(hObject, eventdata, handles)
% hObject    handle to btnSimpson (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;
clear global;
close;
Simpson_Tres_Octavos;


% --- Executes on button press in btnCuadrutab.
function btnCuadrutab_Callback(hObject, eventdata, handles)
% hObject    handle to btnCuadrutab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;
clear global;
close;
Cuadratura_Gaussiana_Tabular;