.class Lcom/netease/androidcrashhandler/anr/ANRWatchDog$4;
.super Ljava/lang/Object;
.source "ANRWatchDog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/anr/ANRWatchDog;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/anr/ANRWatchDog;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$4;->this$0:Lcom/netease/androidcrashhandler/anr/ANRWatchDog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$4;->this$0:Lcom/netease/androidcrashhandler/anr/ANRWatchDog;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->access$002(Lcom/netease/androidcrashhandler/anr/ANRWatchDog;J)J

    .line 78
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$4;->this$0:Lcom/netease/androidcrashhandler/anr/ANRWatchDog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->access$102(Lcom/netease/androidcrashhandler/anr/ANRWatchDog;Z)Z

    return-void
.end method
