.class Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;
.super Ljava/lang/Object;
.source "GooglePGSV2Api.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSV2Api;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/games/AuthenticationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/google/GooglePGSV2Api;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/netease/ntunisdk/google/SignInCallback;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;->this$0:Lcom/netease/ntunisdk/google/GooglePGSV2Api;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;->val$callback:Lcom/netease/ntunisdk/google/SignInCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AuthenticationResult;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getPlayersClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/games/PlayersClient;->getCurrentPlayer()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2$2;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2$2;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2$1;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;)V

    .line 94
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;->val$callback:Lcom/netease/ntunisdk/google/SignInCallback;

    invoke-interface {p1}, Lcom/netease/ntunisdk/google/SignInCallback;->onFailed()V

    :goto_0
    return-void
.end method
