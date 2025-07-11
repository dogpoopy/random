.class Lcom/netease/mrzhna/Launcher$20$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Launcher$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/mrzhna/Launcher$20;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Launcher$20;)V
    .locals 0

    .line 2376
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$20$1;->this$1:Lcom/netease/mrzhna/Launcher$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 2380
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
