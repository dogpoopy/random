.class Lcom/netease/ntunisdk/google/GooglePGSV2Api$1;
.super Ljava/lang/Object;
.source "GooglePGSV2Api.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/SignInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSV2Api;->login(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V
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


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$1;->this$0:Lcom/netease/ntunisdk/google/GooglePGSV2Api;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$1;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$1;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/games/Player;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$1;->this$0:Lcom/netease/ntunisdk/google/GooglePGSV2Api;

    .line 55
    invoke-static {v1}, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->access$000(Lcom/netease/ntunisdk/google/GooglePGSV2Api;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/GamesSignInClient;->requestServerSideAccess(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/google/GooglePGSV2Api$1$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$1$1;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api$1;Lcom/google/android/gms/games/Player;)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$1;->onSuccess(Lcom/google/android/gms/games/Player;)V

    return-void
.end method
