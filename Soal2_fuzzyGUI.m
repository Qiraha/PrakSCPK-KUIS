function varargout = Soal2_fuzzyGUI(varargin)
% SOAL2_FUZZYGUI MATLAB code for Soal2_fuzzyGUI.fig
%      SOAL2_FUZZYGUI, by itself, creates a new SOAL2_FUZZYGUI or raises the existing
%      singleton*.
%
%      H = SOAL2_FUZZYGUI returns the handle to a new SOAL2_FUZZYGUI or the handle to
%      the existing singleton*.
%
%      SOAL2_FUZZYGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SOAL2_FUZZYGUI.M with the given input arguments.
%
%      SOAL2_FUZZYGUI('Property','Value',...) creates a new SOAL2_FUZZYGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Soal2_fuzzyGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Soal2_fuzzyGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Soal2_fuzzyGUI

% Last Modified by GUIDE v2.5 23-Apr-2021 19:59:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Soal2_fuzzyGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Soal2_fuzzyGUI_OutputFcn, ...
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


% --- Executes just before Soal2_fuzzyGUI is made visible.
function Soal2_fuzzyGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Soal2_fuzzyGUI (see VARARGIN)

% Choose default command line output for Soal2_fuzzyGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Soal2_fuzzyGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Soal2_fuzzyGUI_OutputFcn(hObject, eventdata, handles) 
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
input1=get(handles.style,'string');
input2=get(handles.mechfal,'string');
style=(str2num(input1)); 
mechfal=(str2num(input2));
fuzzy = readfis('Soal2_fuzzy');
output = evalfis([style mechfal],fuzzy);
set(handles.result, 'string', output);



function style_Callback(hObject, eventdata, handles)
% hObject    handle to style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of style as text
%        str2double(get(hObject,'String')) returns contents of style as a double


% --- Executes during object creation, after setting all properties.
function style_CreateFcn(hObject, eventdata, handles)
% hObject    handle to style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mechfal_Callback(hObject, eventdata, handles)
% hObject    handle to mechfal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mechfal as text
%        str2double(get(hObject,'String')) returns contents of mechfal as a double


% --- Executes during object creation, after setting all properties.
function mechfal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mechfal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result as text
%        str2double(get(hObject,'String')) returns contents of result as a double


% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
