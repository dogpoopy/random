.class Lcom/netease/androidcrashhandler/anr/ANRError$$$_Thread;
.super Ljava/lang/Throwable;
.source "ANRError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/anr/ANRError$$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "_Thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/anr/ANRError$$;


# direct methods
.method private constructor <init>(Lcom/netease/androidcrashhandler/anr/ANRError$$;Lcom/netease/androidcrashhandler/anr/ANRError$$$_Thread;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRError$$$_Thread;->this$0:Lcom/netease/androidcrashhandler/anr/ANRError$$;

    .line 29
    invoke-static {p1}, Lcom/netease/androidcrashhandler/anr/ANRError$$;->access$000(Lcom/netease/androidcrashhandler/anr/ANRError$$;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/androidcrashhandler/anr/ANRError$$;Lcom/netease/androidcrashhandler/anr/ANRError$$$_Thread;Lcom/netease/androidcrashhandler/anr/ANRError$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/netease/androidcrashhandler/anr/ANRError$$$_Thread;-><init>(Lcom/netease/androidcrashhandler/anr/ANRError$$;Lcom/netease/androidcrashhandler/anr/ANRError$$$_Thread;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRError$$$_Thread;->this$0:Lcom/netease/androidcrashhandler/anr/ANRError$$;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/anr/ANRError$$;->access$100(Lcom/netease/androidcrashhandler/anr/ANRError$$;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/anr/ANRError$$$_Thread;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method
