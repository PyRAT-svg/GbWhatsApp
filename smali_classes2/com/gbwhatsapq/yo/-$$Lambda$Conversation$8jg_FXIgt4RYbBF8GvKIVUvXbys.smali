.class public final synthetic Lcom/gbwhatsapq/yo/-$$Lambda$Conversation$8jg_FXIgt4RYbBF8GvKIVUvXbys;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/Activity;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gbwhatsapq/yo/-$$Lambda$Conversation$8jg_FXIgt4RYbBF8GvKIVUvXbys;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gbwhatsapq/yo/-$$Lambda$Conversation$8jg_FXIgt4RYbBF8GvKIVUvXbys;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/gbwhatsapq/yo/-$$Lambda$Conversation$8jg_FXIgt4RYbBF8GvKIVUvXbys;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gbwhatsapq/yo/-$$Lambda$Conversation$8jg_FXIgt4RYbBF8GvKIVUvXbys;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gbwhatsapq/yo/Conversation;->lambda$8jg_FXIgt4RYbBF8GvKIVUvXbys(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
