.class Lcom/netease/pushclient/PushManagerImpl$2;
.super Ljava/lang/Object;
.source "PushManagerImpl.java"

# interfaces
.implements Lcom/netease/pushclient/PushManagerImpl$HmsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pushclient/PushManagerImpl;->onInitSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hmsFail()V
    .locals 2

    .line 142
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsFail"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    const-string v1, "niepush"

    invoke-static {v0, v1}, Lcom/netease/pushclient/PushManagerImpl;->access$100(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->access$200()V

    return-void
.end method

.method public hmsSuccess()V
    .locals 6

    .line 120
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmsSuccess"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 123
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 124
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.build.hw_emui_api_level"

    aput-object v4, v3, v0

    .line 127
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    :goto_0
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EMUI\u7248\u672c:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 135
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMUI\u7248\u672c\u4f4e\u4e8e4.1\u4f7f\u7528niepush!"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    const-string v1, "niepush"

    invoke-static {v0, v1}, Lcom/netease/pushclient/PushManagerImpl;->access$100(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    :cond_0
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->access$200()V

    return-void
.end method
