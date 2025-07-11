.class public Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener;
.super Ljava/lang/Object;
.source "RequestCallbackListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener$OnRequestCallback;
    }
.end annotation


# static fields
.field private static final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener$OnRequestCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyAllListener(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener;->list:Ljava/util/List;

    monitor-enter v0

    .line 14
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener$OnRequestCallback;

    .line 15
    invoke-interface {v2, p0}, Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener$OnRequestCallback;->extendFunc(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 17
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static register(Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener$OnRequestCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener;->list:Ljava/util/List;

    monitor-enter v0

    .line 22
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static unregister(Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener$OnRequestCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener;->list:Ljava/util/List;

    monitor-enter v0

    .line 28
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
