.class Lcom/netease/mpay/oversea/e4$c$a;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Lcom/netease/mpay/oversea/e4$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/e4$c;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e4$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/e4$b;

.field final synthetic b:Lcom/netease/mpay/oversea/e4$c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/e4$c;Lcom/netease/mpay/oversea/e4$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/e4$c$a;->b:Lcom/netease/mpay/oversea/e4$c;

    iput-object p2, p0, Lcom/netease/mpay/oversea/e4$c$a;->a:Lcom/netease/mpay/oversea/e4$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/e4$c$a;->a:Lcom/netease/mpay/oversea/e4$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/e4$b;->a(ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/e4$c$a;->b:Lcom/netease/mpay/oversea/e4$c;

    iget-object p2, p1, Lcom/netease/mpay/oversea/e4$c;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/e4$d;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/e4$c;->a(Lcom/netease/mpay/oversea/e4$c;Lcom/netease/mpay/oversea/e4$d;)Lcom/netease/mpay/oversea/e4$d;

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/e4$c$a;->b:Lcom/netease/mpay/oversea/e4$c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/e4$c;->a(Lcom/netease/mpay/oversea/e4$c;)Lcom/netease/mpay/oversea/e4$d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/e4$c$a;->b:Lcom/netease/mpay/oversea/e4$c;

    iget-object p2, p1, Lcom/netease/mpay/oversea/e4$c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Lcom/netease/mpay/oversea/e4$c;->a(Lcom/netease/mpay/oversea/e4$c;)Lcom/netease/mpay/oversea/e4$d;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method
