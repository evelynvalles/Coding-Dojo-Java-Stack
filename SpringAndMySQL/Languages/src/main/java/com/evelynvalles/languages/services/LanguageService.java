package com.evelynvalles.languages.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evelynvalles.languages.models.Language;
import com.evelynvalles.languages.repositories.LanguageRepository;

@Service
public class LanguageService {
	
	@Autowired
	LanguageRepository languageRepository;
	
//	List all
	public List<Language> allLanguages() {
		return languageRepository.findAll();
	}
	
//	create
	public Language createLanguage(Language language) {
		return languageRepository.save(language);
	}
	
//	find one
	public Language findLanguage(Long id) {
		Optional<Language> optionalLanguage = languageRepository.findById(id);
		if (optionalLanguage.isPresent()) {
			return optionalLanguage.get();
		}
		else {
			return null;
		}
	}
	
//	update
	public Language updateLanguage(Language language) {
		return languageRepository.save(language);
	}
	
//	delete
	public void deleteLanguage(Long id) {
		Optional<Language> optionalLanguage = languageRepository.findById(id);
		if(optionalLanguage.isPresent()) {
			languageRepository.deleteById(id);
		}
	}
}
