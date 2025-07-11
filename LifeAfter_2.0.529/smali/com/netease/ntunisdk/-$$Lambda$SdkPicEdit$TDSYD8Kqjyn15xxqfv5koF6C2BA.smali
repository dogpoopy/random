.class public final synthetic Lcom/netease/ntunisdk/-$$Lambda$SdkPicEdit$TDSYD8Kqjyn15xxqfv5koF6C2BA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/ntunisdk/SdkPicEdit;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/ntunisdk/SdkPicEdit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/-$$Lambda$SdkPicEdit$TDSYD8Kqjyn15xxqfv5koF6C2BA;->f$0:Lcom/netease/ntunisdk/SdkPicEdit;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/-$$Lambda$SdkPicEdit$TDSYD8Kqjyn15xxqfv5koF6C2BA;->f$0:Lcom/netease/ntunisdk/SdkPicEdit;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/SdkPicEdit;->lambda$handleSaving$1$SdkPicEdit()V

    return-void
.end method
