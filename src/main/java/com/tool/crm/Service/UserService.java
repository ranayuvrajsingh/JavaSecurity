package com.tool.crm.Service;

import com.tool.crm.Entity.User;
import lombok.Getter;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Getter
@Service
public class UserService {

    public List<User> store = new ArrayList<>();

    public UserService() {
        store.add(new User(UUID.randomUUID().toString(), "yuvraj@gmail.com", "Yuvraj"));
        store.add(new User(UUID.randomUUID().toString(), "vraj@gmail.com", "vraj"));
        store.add(new User(UUID.randomUUID().toString(), "raj@gmail.com", "raj"));
    }

}
