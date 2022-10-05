package repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.eduardo.main.models.Book;

import antlr.collections.List;

@Repository
public interface BookRepository extends CrudRepository<Book, Long> {
	    // this method retrieves all the books from the database
	    List<Book> findAll();
	    List<Book> findByDescriptionContaining(String search);
	    // this method counts how many titles contain a certain string
	    Long countByTitleContaining(String search);
	    // this method deletes a book that starts with a specific title
	    Long deleteByTitleStartingWith(String search);
}
