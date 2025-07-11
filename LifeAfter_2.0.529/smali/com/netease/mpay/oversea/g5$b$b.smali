.class Lcom/netease/mpay/oversea/g5$b$b;
.super Ljava/lang/Object;
.source "LinkGoogleGamesApi.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/g5$b;->onComplete(Lcom/google/android/gms/tasks/Task;)V
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
.field final synthetic a:Lcom/netease/mpay/oversea/g5$b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/g5$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/g5$b$b;->a:Lcom/netease/mpay/oversea/g5$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AuthenticationResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AuthenticationResult;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AuthenticationResult;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/g5$b$b;->a:Lcom/netease/mpay/oversea/g5$b;

    iget-object v0, p1, Lcom/netease/mpay/oversea/g5$b;->a:Lcom/google/android/gms/games/GamesSignInClient;

    iget-object p1, p1, Lcom/netease/mpay/oversea/g5$b;->b:Lcom/netease/mpay/oversea/g5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/g5;->f(Lcom/netease/mpay/oversea/g5;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/games/GamesSignInClient;->requestServerSideAccess(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/g5$b$b$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/g5$b$b$a;-><init>(Lcom/netease/mpay/oversea/g5$b$b;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/g5$b$b;->a:Lcom/netease/mpay/oversea/g5$b;

    iget-object p1, p1, Lcom/netease/mpay/oversea/g5$b;->b:Lcom/netease/mpay/oversea/g5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/g5;->d(Lcom/netease/mpay/oversea/g5;)Lcom/netease/mpay/oversea/p;

    move-result-object p1

    const/16 v0, 0x2716

    const-string v1, "login failed!"

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
