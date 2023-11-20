function varargout = grafica_practica8(varargin)
% GRAFICA_PRACTICA8 MATLAB code for grafica_practica8.fig
%      GRAFICA_PRACTICA8, by itself, creates a new GRAFICA_PRACTICA8 or raises the existing
%      singleton*.
%
%      H = GRAFICA_PRACTICA8 returns the handle to a new GRAFICA_PRACTICA8 or the handle to
%      the existing singleton*.
%
%      GRAFICA_PRACTICA8('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFICA_PRACTICA8.M with the given input arguments.
%
%      GRAFICA_PRACTICA8('Property','Value',...) creates a new GRAFICA_PRACTICA8 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before grafica_practica8_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to grafica_practica8_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help grafica_practica8

% Last Modified by GUIDE v2.5 23-Feb-2022 10:30:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @grafica_practica8_OpeningFcn, ...
                   'gui_OutputFcn',  @grafica_practica8_OutputFcn, ...
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


% --- Executes just before grafica_practica8 is made visible.
function grafica_practica8_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to grafica_practica8 (see VARARGIN)

% Choose default command line output for grafica_practica8
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes grafica_practica8 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = grafica_practica8_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
