.class Lcom/netease/mpay/oversea/g5$a$a;
.super Ljava/lang/Object;
.source "LinkGoogleGamesApi.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/g5$a;->onComplete(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/g5$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/g5$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/g5$a$a;->a:Lcom/netease/mpay/oversea/g5$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "player#authCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/g5$a$a;->a:Lcom/netease/mpay/oversea/g5$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/g5$a;->b:Lcom/netease/mpay/oversea/g5;

    invoke-static {v0}, Lcom/netease/mpay/oversea/g5;->a(Lcom/netease/mpay/oversea/g5;)Lcom/netease/mpay/oversea/p;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, ""

    invoke-interface {v0, v2, p1, v1}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/g5$a$a;->a:Lcom/netease/mpay/oversea/g5$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/g5$a;->b:Lcom/netease/mpay/oversea/g5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/g5;->b(Lcom/netease/mpay/oversea/g5;)Lcom/netease/mpay/oversea/p;

    move-result-object p1

    const/4 v0, -0x3

    const-string v1, "Token is null"

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/g5$a$a;->a:Lcom/netease/mpay/oversea/g5$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/g5$a;->b:Lcom/netease/mpay/oversea/g5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/g5;->e(Lcom/netease/mpay/oversea/g5;)Lcom/netease/mpay/oversea/p;

    move-result-object p1

    const/16 v0, 0x2716

    const-string v1, "login failed!"

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
