import Foundation

class Strings {
    var ControlViews = ["HStack","VStack","Text","Button","Image","TextField","NavigationLink","List","HorizontalSplitView","Form","MenuButton","PasteButton","GroupBox","NavigationView","TabView","Slider","Stepper","Spacer","RectangleView","ScrollView","DatePicker","Playgrounds Preview"]
    var Logic = ["SwiftUIView","If Statement","For Loop","Function","Variable","Constant Variable","State Variable","Environment Variable","Class"]
    var Paints = ["Angular Gradient","Linear Gradient","Radial Gradient"]
    func HStack() -> String { return  "HStack {\n <#Content#> \n}"}
    func VStack() -> String { return  "VStack {\n <#Content#> \n}"}
    func Text() -> String { return  "Text(<#Text#>)" }
    func Button() -> String { return  "Button(action: { \n <#Code to Execute on press#> \n }) { \n Text(<#Button Title#>) \n }"}
    func Image() -> String { return  "Image(<##><#Image name#>)"}
    func TextField() -> String { return  "TextField(<#Placeholder#>, text: <#Value#>)"}
    func NavigationLink() -> String { return  "NavigationLink(destination: <#Destination#>) {<#Label Content#>}" }
    func List() -> String { return  "List {\n <#Content#> \n}"}
    func HorizontalSplitView() -> String { return  "HSplitView {\n Text(<#Leading#> \n Text(<#Trailing#> \n}" }
    func Form() -> String { return  "Form { \n <#Content#> \n }"}
    func MenuButton() -> String { return  "MenuButton(label: <#Label#>) {\n <#Menu Button 1#>\n <#Menu Buton 2#>}"}
    func PasteButton() -> String { return  "PasteButton(supportedTypes: /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER{ return Types@*/[]/*@END_MENU_TOKEN@*/) { \n itemProviders in \n }"}
    func GroupBox() -> String { return  "GroupBox(label: <#Label#>) {\n <#Contents#>\n }"}
    func NavigationView() -> String { return  "NavigationView {NavigationLink(destination: <#Destination#>) { \n <#Content#> \n }\n }"}
    func TabView() -> String { return  "TabView(selection: <#Selection#>) {\n Text(<#Tab Content 1#>) }.tag(1)\n Text(<#Tab Content 2#>) }.tag(2) \n }"}
    func Slider() -> String { return  "Slider(value: <#Value#>)" }
    func Stepper() -> String { return  "Stepper(value: <#Value#>, in: <#Range#>) {\n<#Label#>\n }"}
    func Spacer() -> String { return  "Spacer()"}
    func RectangleView() -> String { return  "Rectangle()"}
    func ScrollView() -> String { return  "ScrollView {\n <#Content#> \n }"}
    func DatePicker() -> String { return  "DatePicker(selection: .Constant(Date()), label: { Text(<#Date Text#> })"}
    func SwiftUIView() -> String{ return  "struct <#View name#>:View {\n var body: some View {\n Text(<#Text#>)\n\n }\n }"}
    func IFStatement() -> String { return  "if <#Condition#> { \n <#Body#> \n }"}
    func ForLoop() -> String { return  "for n in <#variable#> {\n <#Body#> \n }"}
    func Function() -> String { return  "func <#name#>(<#Parameters#>) { \n <#Body#> \n }"}
    func Variable() -> String { return  "var <#name#> = <#Value#>"}
    func ConstantVariable() -> String { return  "let <#name#> = <#Value#>"}
    func StateVariable() -> String  { return  "@State var <#name#> = <#Value#>"}
    func EnvironmentVariable() -> String { return  "@Environment(<#action#>) var <#name#>"}
    func _Class() -> String  { return  "class <#name#> { \n <#Body#> \n }" }
    func AngularGradient() -> String { return  "AngularGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)"}
    func LinearGradient() -> String { return  "LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)" }
    func RadialGradient() -> String { return  "RadialGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/500/*@END_MENU_TOKEN@*/)" }
    func PlaygroundsPreview() -> String {return "PlaygroundPage.current.setLiveView(<#View name#>)"}
}
