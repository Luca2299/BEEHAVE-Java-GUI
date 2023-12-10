package UI.controllers.helperClasses;

import javafx.util.StringConverter;

public class myIntegerStringConverter extends StringConverter<Number>{
    public myIntegerStringConverter() {
    }

    @Override
    public String toString(Number object) {
        if(object.intValue()!=object.doubleValue())
            return "";
        return ""+(object.intValue());
    }

    @Override
    public Number fromString(String string) {
        Number val = Double.parseDouble(string);
        return val.intValue();
    }
}  
