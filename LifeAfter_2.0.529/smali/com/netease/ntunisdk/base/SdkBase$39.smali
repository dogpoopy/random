.class final Lcom/netease/ntunisdk/base/SdkBase$39;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntCancelLocalNotification(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;I)V
    .locals 0

    .line 7626
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$39;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iput p2, p0, Lcom/netease/ntunisdk/base/SdkBase$39;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 7629
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$39;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$39;->b:I

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->cancelLocalNotification(I)V

    return-void
.end method
