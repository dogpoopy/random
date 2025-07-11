.class Lcom/netease/pharos/linkcheck/Proxy$2;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Lcom/netease/pharos/linkcheck/ConfigInfoListener;


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

    .line 111
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Proxy$2;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(ZLjava/lang/String;)V
    .locals 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkCheckProxy [mConfigInfoListener][callBack]  mOnceList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/linkcheck/Proxy$2;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-static {v1}, Lcom/netease/pharos/linkcheck/Proxy;->access$400(Lcom/netease/pharos/linkcheck/Proxy;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinkCheckProxy"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy$2;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-static {v0}, Lcom/netease/pharos/linkcheck/Proxy;->access$400(Lcom/netease/pharos/linkcheck/Proxy;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy$2;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-static {v0}, Lcom/netease/pharos/linkcheck/Proxy;->access$400(Lcom/netease/pharos/linkcheck/Proxy;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LinkCheckProxy [mConfigInfoListener][callBack]  cycle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", extra="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy$2;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-static {v0, p1}, Lcom/netease/pharos/linkcheck/Proxy;->access$202(Lcom/netease/pharos/linkcheck/Proxy;Z)Z

    .line 126
    iget-object p1, p0, Lcom/netease/pharos/linkcheck/Proxy$2;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-static {p1}, Lcom/netease/pharos/linkcheck/Proxy;->access$100(Lcom/netease/pharos/linkcheck/Proxy;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/netease/pharos/linkcheck/Proxy$2;->this$0:Lcom/netease/pharos/linkcheck/Proxy;

    invoke-static {p1}, Lcom/netease/pharos/linkcheck/Proxy;->access$100(Lcom/netease/pharos/linkcheck/Proxy;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
