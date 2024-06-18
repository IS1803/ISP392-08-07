/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.isp392.brand;

/**
 *
 * @author Oscar
 */
public class BrandError {

    private String brandIDError;
    private String brandNameError;
    private String statusError;

    public BrandError() {
    }

    public BrandError(String brandIDError, String brandNameError, String statusError) {
        this.brandIDError = brandIDError;
        this.brandNameError = brandNameError;
        this.statusError = statusError;
    }

    public String getBrandIDError() {
        return brandIDError;
    }

    public void setBrandIDError(String brandIDError) {
        this.brandIDError = brandIDError;
    }

    public String getBrandNameError() {
        return brandNameError;
    }

    public void setBrandNameError(String brandNameError) {
        this.brandNameError = brandNameError;
    }

    public String getStatusError() {
        return statusError;
    }

    public void setStatusError(String statusError) {
        this.statusError = statusError;
    }

    
}
