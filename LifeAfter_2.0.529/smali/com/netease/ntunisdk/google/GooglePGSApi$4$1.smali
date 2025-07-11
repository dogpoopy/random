.class Lcom/netease/ntunisdk/google/GooglePGSApi$4$1;
.super Ljava/lang/Object;
.source "GooglePGSApi.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSApi$4;->onSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$4;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSApi$4;Ljava/util/List;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$4;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 9

    .line 260
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$4;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$retry:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/games/FriendsResolutionRequiredException;

    if-eqz v0, :cond_0

    .line 261
    check-cast p1, Lcom/google/android/gms/games/FriendsResolutionRequiredException;

    .line 263
    invoke-virtual {p1}, Lcom/google/android/gms/games/FriendsResolutionRequiredException;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

    iget-object v1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$4;

    iget v1, v1, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$type:I

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/google/GooglePGSApi;->access$402(Lcom/netease/ntunisdk/google/GooglePGSApi;I)I

    .line 266
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$4;

    iget-object v1, v0, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$activity:Landroid/app/Activity;

    .line 267
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 268
    invoke-static {}, Lcom/netease/ntunisdk/google/GooglePGSApi;->access$500()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 266
    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 276
    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    goto :goto_0

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$4;

    iget-object p1, p1, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$queryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    if-eqz p1, :cond_1

    .line 280
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$4;

    iget-object p1, p1, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$queryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$1;->val$list:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$4;

    iget v1, v1, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$type:I

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;->onFinish(Ljava/util/List;I)V

    :cond_1
    :goto_0
    return-void
.end method
