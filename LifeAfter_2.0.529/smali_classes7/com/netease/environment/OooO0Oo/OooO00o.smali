.class public Lcom/netease/environment/OooO0Oo/OooO00o;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# static fields
.field private static final OooO00o:Ljava/lang/String; = "OooO00o"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic OooO00o()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/environment/OooO0Oo/OooO00o;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method public static OooO00o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, v0}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO0O0(Landroid/content/Context;Z)V

    .line 6
    sget-object v0, Lcom/netease/environment/OooO0Oo/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http get:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/netease/environment/OooO0oo/OooO0Oo;->OooO0OO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netease/environment/OooO0oo/OooO0Oo;->OooO0O0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/environment/OooO0Oo/OooO00o$OooO0O0;

    invoke-direct {v2, p0, p1}, Lcom/netease/environment/OooO0Oo/OooO00o$OooO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lcom/netease/environment/OooO0Oo/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/environment/OooO0o0/OooO00o;)V

    return-void
.end method

.method private static OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/environment/OooO0o0/OooO00o;)V
    .locals 2

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/netease/environment/OooO0Oo/OooO00o$OooO00o;

    invoke-direct {v1, p3, p0, p1, p2}, Lcom/netease/environment/OooO0Oo/OooO00o$OooO00o;-><init>(Lcom/netease/environment/OooO0o0/OooO00o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
