.class public interface abstract Lcom/netease/ntunisdk/IRemoteService;
.super Ljava/lang/Object;
.source "IRemoteService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/IRemoteService$Stub;,
        Lcom/netease/ntunisdk/IRemoteService$Default;
    }
.end annotation


# virtual methods
.method public abstract register(Lcom/netease/ntunisdk/IRemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract send(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
