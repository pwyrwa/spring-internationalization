package org.pio.sampleintern.web.model;

import org.joda.time.DateTime;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;

import java.util.Date;

public class HomeModel
{
    // This is what I want to use instead of "style" -> pattern="#{messages['time.format']}"
    @DateTimeFormat(style = "S-")
    private DateTime today;

    @NumberFormat(style = Style.CURRENCY)
    private int size;

    private String language;

    public Date getTodayDate()
    {
        return today.toDate();
    }

    public int getSize()
    {
        return size;
    }

    public void setSize(int size)
    {
        this.size = size;
    }

    public String getLanguage()
    {
        return language;
    }

    public void setLanguage(String language)
    {
        this.language = language;
    }

    public DateTime getToday()
    {
        return today;
    }

    public void setToday(DateTime today)
    {
        this.today = today;
    }
}
