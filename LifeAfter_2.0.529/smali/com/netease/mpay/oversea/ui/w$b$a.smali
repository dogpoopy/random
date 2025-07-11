.class Lcom/netease/mpay/oversea/ui/w$b$a;
.super Ljava/lang/Object;
.source "WebVerifier.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/w$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/w$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/w$b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/w$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/w$b$a;->a:Lcom/netease/mpay/oversea/ui/w$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w$b$a;->a:Lcom/netease/mpay/oversea/ui/w$b;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/w$b;->b:Lcom/netease/mpay/oversea/ui/w;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/w;->b(Lcom/netease/mpay/oversea/ui/w;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/w$b$a;->a:Lcom/netease/mpay/oversea/ui/w$b;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/w$b;->b:Lcom/netease/mpay/oversea/ui/w;

    invoke-static {v1}, Lcom/netease/mpay/oversea/ui/w;->b(Lcom/netease/mpay/oversea/ui/w;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w$b$a;->a:Lcom/netease/mpay/oversea/ui/w$b;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/w$b;->b:Lcom/netease/mpay/oversea/ui/w;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/w;->b(Lcom/netease/mpay/oversea/ui/w;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/w$b$a;->a:Lcom/netease/mpay/oversea/ui/w$b;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/w$b;->b:Lcom/netease/mpay/oversea/ui/w;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/ui/w;Z)Z

    .line 11
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/w$b$a;->a:Lcom/netease/mpay/oversea/ui/w$b;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/w$b;->b:Lcom/netease/mpay/oversea/ui/w;

    invoke-static {v1, p1}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/ui/w;Lcom/netease/mpay/oversea/j;)Lcom/netease/mpay/oversea/j;

    .line 12
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/w$b$a;->a:Lcom/netease/mpay/oversea/ui/w$b;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/w$b;->b:Lcom/netease/mpay/oversea/ui/w;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/w;->b(Lcom/netease/mpay/oversea/ui/w;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w$b$a;->a:Lcom/netease/mpay/oversea/ui/w$b;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/w$b;->b:Lcom/netease/mpay/oversea/ui/w;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/w;->b(Lcom/netease/mpay/oversea/ui/w;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/w$b$a;->a:Lcom/netease/mpay/oversea/ui/w$b;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/w$b;->b:Lcom/netease/mpay/oversea/ui/w;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/ui/w;Z)Z

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/w$b$a;->a:Lcom/netease/mpay/oversea/ui/w$b;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/w$b;->b:Lcom/netease/mpay/oversea/ui/w;

    invoke-static {v1, p1}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/ui/w;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/w$b$a;->a:Lcom/netease/mpay/oversea/ui/w$b;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/w$b;->b:Lcom/netease/mpay/oversea/ui/w;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/w;->b(Lcom/netease/mpay/oversea/ui/w;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
