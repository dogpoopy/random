.class Lcom/netease/androidcrashhandler/util/TraceFileUtil$MappingModule;
.super Ljava/lang/Object;
.source "TraceFileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/util/TraceFileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MappingModule"
.end annotation


# instance fields
.field mapping_name:Ljava/lang/String;

.field uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/netease/androidcrashhandler/util/TraceFileUtil$MappingModule;->mapping_name:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/netease/androidcrashhandler/util/TraceFileUtil$MappingModule;->uuid:Ljava/lang/String;

    return-void
.end method
