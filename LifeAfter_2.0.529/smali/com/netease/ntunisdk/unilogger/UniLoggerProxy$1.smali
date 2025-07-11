.class Lcom/netease/ntunisdk/unilogger/UniLoggerProxy$1;
.super Ljava/lang/Object;
.source "UniLoggerProxy.java"

# interfaces
.implements Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;->initModule(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/UniLoggerProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;Z)V
    .locals 1

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p2, :cond_2

    .line 65
    :cond_0
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UniLoggerProxy [init] [logger-trace] parse config finish, onResult unitName="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {p2}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->showUnitResult(Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uniLoggerHashMap="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/UniLoggerProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;->access$000(Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 65
    invoke-static {p3}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "all"

    .line 69
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 70
    iget-object p1, p0, Lcom/netease/ntunisdk/unilogger/UniLoggerProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;->access$000(Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/UniLoggerProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;->access$000(Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netease/ntunisdk/unilogger/UniLogger;

    const/4 v0, 0x1

    invoke-virtual {p3, p2, v0}, Lcom/netease/ntunisdk/unilogger/UniLogger;->update(Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;Z)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object p3, p0, Lcom/netease/ntunisdk/unilogger/UniLoggerProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;

    invoke-static {p3}, Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;->access$000(Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 76
    iget-object p3, p0, Lcom/netease/ntunisdk/unilogger/UniLoggerProxy$1;->this$0:Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;

    invoke-static {p3}, Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;->access$000(Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/unilogger/UniLogger;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/netease/ntunisdk/unilogger/UniLogger;->update(Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UniLoggerProxy [init] ConfigProxy onResult Exception="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->w_inner(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
