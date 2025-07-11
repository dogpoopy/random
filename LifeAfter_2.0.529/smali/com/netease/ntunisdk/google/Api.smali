.class public interface abstract Lcom/netease/ntunisdk/google/Api;
.super Ljava/lang/Object;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract displayAchievement(Landroid/app/Activity;)V
.end method

.method public abstract displayLeaderboard(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/ntunisdk/google/CallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hasFriends()Z
.end method

.method public abstract init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract login(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logout(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end method

.method public abstract queryFriendList(Landroid/app/Activity;IZLcom/netease/ntunisdk/google/OnQueryFriendListCallBack;)V
.end method

.method public abstract queryMyAccount(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestEmailFromGoogleAccount(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showProfile(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/ntunisdk/google/CallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/ntunisdk/google/SignInCallback<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract updateAchievement(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/ntunisdk/google/CallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateEvent(Landroid/app/Activity;Ljava/lang/String;I)V
.end method

.method public abstract updateRank(Landroid/app/Activity;Ljava/lang/String;DLcom/netease/ntunisdk/google/CallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "D",
            "Lcom/netease/ntunisdk/google/CallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
