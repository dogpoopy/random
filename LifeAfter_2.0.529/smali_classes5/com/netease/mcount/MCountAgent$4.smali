.class Lcom/netease/mcount/MCountAgent$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mcount/MCountAgent;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/netease/mcount/MCountAgent;


# direct methods
.method constructor <init>(Lcom/netease/mcount/MCountAgent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/MCountAgent$4;->b:Lcom/netease/mcount/MCountAgent;

    iput-object p2, p0, Lcom/netease/mcount/MCountAgent$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    new-instance v0, Lcom/netease/mcount/d/a/c;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent$4;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v2}, Lcom/netease/mcount/MCountAgent;->a(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mcount/MCountAgent$4;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v3}, Lcom/netease/mcount/MCountAgent;->b(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mcount/d/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mcount/d/a/c;->g()Lcom/netease/mcount/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent$4;->b:Lcom/netease/mcount/MCountAgent;

    iget-wide v2, v0, Lcom/netease/mcount/a/b;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/netease/mcount/MCountAgent;->setTimeOffsetSec(J)V

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent$4;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v1}, Lcom/netease/mcount/MCountAgent;->c(Lcom/netease/mcount/MCountAgent;)Lcom/netease/mcount/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent$4;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/netease/mcount/a/c;->a(Landroid/content/Context;Lcom/netease/mcount/a/b;)V

    new-instance v0, Lcom/netease/mcount/e/a;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent$4;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v2}, Lcom/netease/mcount/MCountAgent;->a(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mcount/MCountAgent$4;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v3}, Lcom/netease/mcount/MCountAgent;->b(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mcount/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mcount/e/a;->a(I)V
    :try_end_0
    .catch Lcom/netease/mcount/d/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent$4;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v1}, Lcom/netease/mcount/MCountAgent;->a(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent$4;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v2}, Lcom/netease/mcount/MCountAgent;->b(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get config.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netease/mcount/d/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/netease/mcount/MCountAgent$4;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent$4;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v1}, Lcom/netease/mcount/MCountAgent;->a(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent$4;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v2}, Lcom/netease/mcount/MCountAgent;->b(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/mcount/a/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent$4;->b:Lcom/netease/mcount/MCountAgent;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent$4;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/netease/mcount/MCountAgent;->a(Lcom/netease/mcount/MCountAgent;Landroid/content/Context;)V

    return-void
.end method
