.class public final synthetic LX/0aj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic A00:Lcom/gbwhatsapq/ContactInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/gbwhatsapq/ContactInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/0aj;->A00:Lcom/gbwhatsapq/ContactInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LX/0aj;->A00:Lcom/gbwhatsapq/ContactInfo;

    invoke-virtual {v0}, Lcom/gbwhatsapq/ContactInfo;->A0y()V

    return-void
.end method
