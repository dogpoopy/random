.class Lcom/netease/ntunisdk/google/GooglePGSV2Api$10;
.super Ljava/lang/Object;
.source "GooglePGSV2Api.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/SignInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSV2Api;->showProfile(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/ntunisdk/google/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/google/SignInCallback<",
        "Lcom/google/android/gms/games/Player;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/google/GooglePGSV2Api;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callBack:Lcom/netease/ntunisdk/google/CallBack;

.field final synthetic val$playerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/ntunisdk/google/CallBack;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$10;->this$0:Lcom/netease/ntunisdk/google/GooglePGSV2Api;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$10;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$10;->val$playerId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$10;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    const-string v0, "GooglePGSApi_V2"

    const-string v1, "null signedInAccount"

    .line 357
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$10;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/games/Player;)V
    .locals 1

    .line 344
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$10;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getPlayersClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$10;->val$playerId:Ljava/lang/String;

    .line 345
    invoke-interface {p1, v0}, Lcom/google/android/gms/games/PlayersClient;->getCompareProfileIntent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$10$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$10$1;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api$10;)V

    .line 346
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 341
    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$10;->onSuccess(Lcom/google/android/gms/games/Player;)V

    return-void
.end method
