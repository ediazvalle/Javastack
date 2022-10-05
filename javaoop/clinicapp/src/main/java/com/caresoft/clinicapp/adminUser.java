package com.caresoft.clinicapp;

import java.util.ArrayList;

public class adminUser extends User implements HIPAACompliantUser , HIPAACompliantAdmin {

    @Override
    public ArrayList<String> reportSecurityIncidents() {
        // TODO Auto-generated method stub
        return null;
    }
    
}
