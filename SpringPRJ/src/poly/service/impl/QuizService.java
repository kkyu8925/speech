package poly.service.impl;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import poly.persistence.mongo.IQuizMapper;
import poly.service.IQuizService;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service("QuizService")
public class QuizService implements IQuizService {

    private final Logger log = Logger.getLogger(this.getClass());
    // mongoDB collection name
    private final String colNm = "QuizCollection";

    @Resource(name = "QuizMapper")
    private IQuizMapper quizMapper;

    @Override
    public List<Map<String, String>> getQuizList() throws Exception {

        log.info(this.getClass().getName() + ".getQuizList start!");

        List<Map<String, String>> rQuizList = quizMapper.getQuizList(colNm);

        if (rQuizList == null) {
            rQuizList = new ArrayList<>();
        }

        log.info(this.getClass().getName() + ".getQuizList end!");

        return rQuizList;
    }

    @Override
    public List<String> getQuizContList(String quizTitle, String quizSort) throws Exception {

        log.info(this.getClass().getName() + ".getQuizContList start!");

        List<String> rQuizContList = quizMapper.getQuizContList(colNm, quizTitle, quizSort);

        if (rQuizContList == null) {
            rQuizContList = new ArrayList<>();
        }

        log.info(this.getClass().getName() + ".getQuizContList end!");

        return rQuizContList;
    }
}