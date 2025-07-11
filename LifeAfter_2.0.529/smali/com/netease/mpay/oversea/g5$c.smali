.class Lcom/netease/mpay/oversea/g5$c;
.super Ljava/lang/Object;
.source "LinkGoogleGamesApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/g5;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/mpay/oversea/q0;

.field final synthetic c:Lcom/netease/mpay/oversea/g5;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/g5;Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/g5$c;->c:Lcom/netease/mpay/oversea/g5;

    iput-object p2, p0, Lcom/netease/mpay/oversea/g5$c;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/oversea/g5$c;->b:Lcom/netease/mpay/oversea/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/thirdapi/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/g5$c;->b:Lcom/netease/mpay/oversea/q0;

    iget-object v1, p1, Lcom/netease/mpay/oversea/thirdapi/e;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/netease/mpay/oversea/q0;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/f8;

    iget-object p3, p0, Lcom/netease/mpay/oversea/g5$c;->c:Lcom/netease/mpay/oversea/g5;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/g5;->i()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/netease/mpay/oversea/g5$c;->c:Lcom/netease/mpay/oversea/g5;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g5;->g()Lcom/netease/mpay/oversea/g6;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcom/netease/mpay/oversea/f8;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/g6;)V

    .line 2
    iput-object p2, p1, Lcom/netease/mpay/oversea/f8;->c:Ljava/lang/String;

    .line 3
    iget-object p2, p0, Lcom/netease/mpay/oversea/g5$c;->c:Lcom/netease/mpay/oversea/g5;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g5;->g()Lcom/netease/mpay/oversea/g6;

    move-result-object p2

    iput-object p2, p1, Lcom/netease/mpay/oversea/f8;->d:Lcom/netease/mpay/oversea/g6;

    .line 4
    iget-object p2, p0, Lcom/netease/mpay/oversea/g5$c;->a:Landroid/app/Activity;

    invoke-static {p2}, Lcom/google/android/gms/games/PlayGames;->getPlayersClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/games/PlayersClient;->getCurrentPlayer()Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance p3, Lcom/netease/mpay/oversea/g5$c$a;

    invoke-direct {p3, p0, p1}, Lcom/netease/mpay/oversea/g5$c$a;-><init>(Lcom/netease/mpay/oversea/g5$c;Lcom/netease/mpay/oversea/f8;)V

    .line 6
    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
