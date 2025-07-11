.class public Lcom/netease/mpay/httpdns/b$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/httpdns/b$b;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lcom/netease/mpay/httpdns/b$b;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/httpdns/b$b;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/httpdns/b$b$a;->b:Lcom/netease/mpay/httpdns/b$b;

    iput-object p2, p0, Lcom/netease/mpay/httpdns/b$b$a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/httpdns/b$b$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/netease/mpay/httpdns/b$b$a;->b:Lcom/netease/mpay/httpdns/b$b;

    invoke-virtual {v0}, Lcom/netease/mpay/httpdns/b$b;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/netease/mpay/httpdns/b$b$a;->b:Lcom/netease/mpay/httpdns/b$b;

    invoke-virtual {v1}, Lcom/netease/mpay/httpdns/b$b;->a()V

    throw v0
.end method
