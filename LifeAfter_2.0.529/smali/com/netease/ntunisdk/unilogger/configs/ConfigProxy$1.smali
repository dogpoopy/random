.class Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$1;
.super Ljava/lang/Object;
.source "ConfigProxy.java"

# interfaces
.implements Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;Z)V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigProxy ConfigCallBack [onResult] unitName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callBackMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    invoke-static {v1}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->access$000(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRemote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->access$000(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->access$000(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->access$100(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->access$100(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;->onResult(Ljava/lang/String;Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;Z)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->access$000(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 51
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->access$100(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->access$100(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;->onResult(Ljava/lang/String;Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;Z)V

    :cond_1
    :goto_0
    return-void
.end method
