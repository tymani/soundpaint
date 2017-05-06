package edu.brown.cs.guihandlers;

import java.util.Map;

import com.google.common.collect.ImmutableMap;
import com.google.gson.Gson;

import edu.brown.cs.database.Database;
import edu.brown.cs.soundpaint.GuiProcessor;
import spark.ModelAndView;
import spark.Request;
import spark.Response;
import spark.TemplateViewRoute;

public class FrontProjectsHandler implements TemplateViewRoute {
  
  private GuiProcessor guiProcessor;
  private Gson gson;
  
  public FrontProjectsHandler(GuiProcessor gp) {
    guiProcessor = gp;
    gson = new Gson();
  }

  @Override
  public ModelAndView handle(Request req, Response res) throws Exception {
    String seshId = req.session().id();
    if (!(guiProcessor.getSessionsToUsers().containsKey(seshId))) {
      res.redirect("/login");
      return null;
    }
    
    String userId = guiProcessor.getSessionsToUsers().get(seshId);
    
    String[] thumbfps = Database.getUserThumbnailFilepaths(userId);
    
    String username = req.session().attribute("username");
    Map<String, Object> variables = ImmutableMap.of(
        "title", "Soundpaint - CS32 Final Project",
        "message","Created by Brendan, Mike, Tymani, and Tynan",
        "error", "", "name", username, "thumbs", gson.toJson(thumbfps));
    return new ModelAndView(variables, "projects.ftl");
  }
  
  

}