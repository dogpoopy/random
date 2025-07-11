.class Lcom/netease/pharos/linkcheck/Proxy$1;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Lcom/netease/pharos/linkcheck/CycleTaskStopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/linkcheck/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/linkcheck/Proxy;


# direct methods
.method constructor <init>(Lcom/netease/pharos/linkcheck/Proxy;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Proxy$1;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/String;)V
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkCheckProxy [mCycleTaskStopListener][callBack] \u8be5\u4efb\u52a1\u5df2\u7ecf\u7ed3\u675f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinkCheckProxy"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy$1;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-static {v0}, Lcom/netease/pharos/linkcheck/Proxy;->access$000(Lcom/netease/pharos/linkcheck/Proxy;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, p0, Lcom/netease/pharos/linkcheck/Proxy$1;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-static {p1}, Lcom/netease/pharos/linkcheck/Proxy;->access$100(Lcom/netease/pharos/linkcheck/Proxy;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/pharos/linkcheck/Proxy$1;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-static {p1}, Lcom/netease/pharos/linkcheck/Proxy;->access$100(Lcom/netease/pharos/linkcheck/Proxy;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/netease/pharos/linkcheck/Proxy$1;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-static {p1}, Lcom/netease/pharos/linkcheck/Proxy;->access$000(Lcom/netease/pharos/linkcheck/Proxy;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/netease/pharos/linkcheck/Proxy$1;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-static {p1}, Lcom/netease/pharos/linkcheck/Proxy;->access$000(Lcom/netease/pharos/linkcheck/Proxy;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy$1;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-static {v0}, Lcom/netease/pharos/linkcheck/Proxy;->access$100(Lcom/netease/pharos/linkcheck/Proxy;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "LinkCheckProxy [mCycleTaskStopListener][callBack] \u7ed3\u675f\u4e00\u6b21\u5468\u671f"

    .line 96
    invoke-static {v1, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "LinkCheckProxy [mCycleTaskStopListener][callBack] \u91cd\u65b0\u53d1\u8d77\u4e00\u6b21\u5468\u671f"

    .line 97
    invoke-static {v1, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/netease/pharos/linkcheck/Proxy$1;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/pharos/linkcheck/Proxy;->access$202(Lcom/netease/pharos/linkcheck/Proxy;Z)Z

    .line 99
    iget-object p1, p0, Lcom/netease/pharos/linkcheck/Proxy$1;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-static {p1, v0}, Lcom/netease/pharos/linkcheck/Proxy;->access$302(Lcom/netease/pharos/linkcheck/Proxy;Z)Z

    .line 100
    iget-object p1, p0, Lcom/netease/pharos/linkcheck/Proxy$1;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-static {p1}, Lcom/netease/pharos/linkcheck/Proxy;->access$000(Lcom/netease/pharos/linkcheck/Proxy;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 101
    iget-object p1, p0, Lcom/netease/pharos/linkcheck/Proxy$1;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-virtual {p1}, Lcom/netease/pharos/linkcheck/Proxy;->start()V

    :cond_0
    return-void
.end method
