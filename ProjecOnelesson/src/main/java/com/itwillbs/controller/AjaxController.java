package com.itwillbs.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwillbs.domain.LessonDTO;
import com.itwillbs.service.BoardService;

@RestController
public class AjaxController {
    @Inject
    private BoardService boardService;
    
    @PostMapping("/board/wishToggle")
    public ResponseEntity<Map<String, String>> wishToggle(@RequestParam("id") String id, @RequestParam("wish") String wish, @RequestParam("num") int num) {
        Map<String, String> response = new HashMap<>();
        
        LessonDTO lessonDTO = new LessonDTO();
        lessonDTO.setId(id);
        lessonDTO.setNum(num);
        
        try {
            if ("add".equals(wish)) {
                boardService.addWish(lessonDTO);
                response.put("message", "찜 추가 완료");
            } else if ("remove".equals(wish)) {
                boardService.removeWish(lessonDTO);
                response.put("message", "찜 취소 완료");
            }
            return new ResponseEntity<>(response, HttpStatus.OK);
        } catch (Exception e) {
            response.put("message", "오류가 발생했습니다");
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}

