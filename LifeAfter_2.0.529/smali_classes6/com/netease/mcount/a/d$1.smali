.class Lcom/netease/mcount/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mcount/a/d;->a(Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/a/d$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/mcount/a/d$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mcount/a/d$1;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netease/mcount/a/d$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/mcount/a/d$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/mcount/a/d$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/a/d$1;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/netease/mcount/a/d$1;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/netease/mcount/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
